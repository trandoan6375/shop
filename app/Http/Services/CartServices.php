<?php

namespace App\Http\Services;

use App\Jobs\SendEmail;
use App\Models\Cart;
use App\Models\Customers;
use App\Models\Product;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class CartServices
{
    public function create($request)
    {
        $qty =(int)$request->input('num_product');
        $product_id = (int)$request->input('product_id');

        if($qty <= 0 || $product_id <= 0)
        {
            Session::flash('error','Số lượng hoặc sản phẩm không chính xác');
            return false;
        }
        //Session::forget('carts');
        $carts= Session::get('carts');
        if(is_null($carts)){
            Session::put('carts',[
               $product_id => $qty
            ]);
            return true;
        }
        $exists = Arr::exists($carts,$product_id);
        if($exists)
        {
            $carts[$product_id] =  $carts[$product_id] + $qty;
            Session::put('carts',$carts);
            return true;
        }
        $carts[$product_id]=$qty;
        Session::put('carts',$carts);
        return true;
    }
    public  function getProduct()
    {
        $carts = Session::get('carts');
        if(is_null($carts)) return[];
        $productId= array_keys($carts);
        return Product::select('id','name','price','price_sale','thumb')
            ->where('active',1)
            ->whereIn('id',$productId)
            ->get();
    }
    public function update($request)
    {
        Session::put('carts',$request->input('num-product'));
        return true;
    }
    public function remove($id)
    {
        $carts= Session::get('carts');
        unset($carts[$id]);
        Session::put('carts',$carts);
        return true;
    }
    public function addcart($request)
    {
       try {
           DB::beginTransaction();
            //kiem tra có thành công hay không
            $carts = Session::get('carts');
            if(is_null($carts)) return false;

            $customer=Customers::create([
                'name'      =>$request->input('name'),
                'phone'     =>$request->input('phone'),
                'email'     =>$request->input('email'),
                'address'   =>$request->input('address'),
                'content'   =>$request->input('content')
            ]);

            $this->infoProductCart($carts,$customer->id);
            DB::commit();
            Session::flash('sucess','Đặt hàng thành công');

            #queue
           SendEmail::dispatch($request->input('email'))->delay(now()->addSeconds(5));


            Session::forget('carts');//xóa session
        }
        catch (\Exception $err)
        {
            DB::rollBack();
            //khong ghi dữ liệu
            Session::flash('error','Đặt hàng thất bại, vui lòng thử lại');

            return false;
        }
        return true;
    }
    protected function infoProductCart($carts,$customer_id)
    {
        $productId= array_keys($carts);
        $products = Product::select('id','name','price','price_sale','thumb')
            ->where('active',1)
            ->whereIn('id',$productId)
            ->get();
        $data=[];
        foreach ($products as $key => $product)
        {
            $data[]=[
                'customer_id'=>$customer_id,
                'product_id'=>$product->id,
                'qty'       =>$carts[$product->id],
                'price'     =>$product->price_sale != 0 ? $product->price_sale : $product->price
            ];
        }
        Cart::insert($data);
    }
    public  function getCustomer()
    {
        return Customers::orderByDesc('id')->paginate(15);
    }

    public function getProductForCart($customer)
    {
        return $customer->carts()->with(['product'=>function($query){
            $query->select('id','name','thumb');
            }])->get();
    }
}
