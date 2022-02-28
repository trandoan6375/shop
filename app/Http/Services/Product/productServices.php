<?php
namespace App\Http\Services\Product;

use App\Models\Product;
use App\Models\Menu;
use Illuminate\Support\Facades\Session;
use Mockery\Exception;
use Illuminate\Support\Facades\Log;
use function GuzzleHttp\Promise\all;
use function PHPUnit\Framework\isNull;

class productServices
{
    public function getMenu()
    {
        return Menu::where('active',1)->get();
    }
    public function isValidPrice($request)
    {
        if($request->input('price') != 0 && $request->input('price_sale') != 0
        && $request->input('price_sale') >= $request->input('price'))
        {
            Session::flash('error','Giá giảm phải nhỏ hơn giá gốc');
            return false;
        }
        if($request->input('price_sale')!=0 && (int)$request->input('price')==0)
        {
            Session::flash('error','Vui lòng nhập giá gốc');
            return false;
        }
        return true;
    }
    public function insert($request)
    {
        $isValidPrice = $this->isValidPrice($request);
        if($isValidPrice == false)
        {
            return false;
        }
        try {
            $request->except('_token');
            Product::create($request->all());

            Session::flash('success','Thêm sản phẩm thảnh công');
        }
        catch (\Exception $err)
        {
            Session::flash('error','Thêm sản phẩm thất bại');

            Log::info($err->getMessage());
            return false;
        }
        return true;

    }
    public function get()
    {
        return Product::with('menu')
            ->orderByDesc('id')->paginate(15);
    }
    public function update($request, $product)
    {
        $isValidPrice = $this->isValidPrice($request);
        if($isValidPrice == false) return false;
        try {
            $product->fill($request->input());
            $product->save();
            Session::flash('success','Cập nhật thành công');
        }
        catch (Exception $err)
        {
            Session::flash('error','Cập nhật thất bại');
            Log::info($err->getMessage());
            return false;
        }
        return true;


    }
    public function delete($request)
    {
        $product= Product::where('id',$request->input('id'))->first();
        if($product){
            $product->delete();
            return true;
        }
        return  false;
    }
    public function getSearch($request)
    {
        $search=$request->search;
        if(!isNull($search))
        {
            return Product::with('menu')->select(all())
                ->paginate(15);
        }
        else
        {
            return Product::with('menu')->where('name','like','%'.$search.'%')
                ->orWhere('description','like','%'.$search.'%')
                ->orWhere('id',$search)
                ->orWhere('price',$search)
                ->orWhere('price_sale',$search)
                ->paginate(15);
        }
        return false;

    }
}
