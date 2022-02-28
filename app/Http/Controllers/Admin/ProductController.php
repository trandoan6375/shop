<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Product\ProductRequest;
use App\Http\Services\Product\productServices;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    protected $productServices;
    public function __construct(productServices $productServices)
    {
        $this->productServices = $productServices;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.product.list',[
            'title'     =>'danh sách sản phẩm',
            'products'  =>  $this->productServices->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.product.add',[
           'title'=>'Thêm sản phẩm',
            'menus'=>$this->productServices->getMenu()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
    {
        $this->productServices->insert($request);
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //khi truyen product thi no se tu dong kiem tra xem co trong product hay chua
        return view('admin.product.edit',[
           'title'=> 'Chỉnh sửa sản phẩm',
            'product'=>$product,
            'menus'=>$this->productServices->getMenu()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $result = $this->productServices->update($request,$product);
        if($result ==true)
        {
            return redirect('/admin/products/list');
        }
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $result = $this->productServices->delete($request);
        if($result==true)
        {
            return response()->json([
               'error'=>false,
                'message'=>'Xóa thành công sản phẩm'
            ]);
        }
        return response()->json([
            'error'=>true
        ]);
    }
    public function search(Request $request)
    {
        return view('admin.product.list',[
            'title'     =>'danh sách sản phẩm : '.$request->input('search'),
            'products'  =>  $this->productServices->getSearch($request)
        ]);
    }
}
