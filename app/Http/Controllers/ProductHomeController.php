<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\Product\productServices2;
class ProductHomeController extends Controller
{
    protected $productServices;
    public function __construct(productServices2 $productServices)
    {
        $this->productServices=$productServices;
    }

    public function index($id='',$slug='')
    {
        $product= $this->productServices->show($id);
        $productsMore=$this->productServices->more($id);
        //kiem tra xem co ton tai trong database k
        return view('product.content',[
            'title'=>$product->name,
            'product'=>$product,
            'products'=>$productsMore
        ]);

    }
}
