<?php

namespace App\Http\Controllers;

use App\http\Services\Slider\SliderServices;
use Illuminate\Http\Request;
use App\Http\Services\Menu\MenuService;
use App\Http\Services\Product\productServices2;
use App\Http\Services\CartServices;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{   protected $cart;
    protected $slider;
    protected $menu;
    protected $product;
    public function __construct(SliderServices $slider,MenuService $menu,productServices2 $product,
    CartServices $cart)
    {
        $this->slider=$slider;
        $this->menu=$menu;
        $this->product=$product;
        $this->cart=$cart;
    }

    public function index()
    {
        return view('main',[
            'title'     =>'Shop Thời trang',
            'sliders'   =>$this->slider->show(),
            'menus'     =>$this->menu->show(),
            'products'  =>$this->product->get(),
            'carts'     =>Session::get('carts')
        ]);
    }
    public function loadProduct(Request $request)
    {
        $page=$request->input('page',0);
        $result= $this->product->get($page);
        if(count($result)!=0)
        {
            $html= view('product.list',['products'=>$result])->render();
            return response()->json(['html'=>$html]);
        }
        return response()->json(['html'=>'']);
    }
}
