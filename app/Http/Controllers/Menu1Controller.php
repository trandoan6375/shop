<?php

namespace App\Http\Controllers;

use App\Http\Services\Menu\MenuService;
use App\Http\Services\Product\productServices2;
use App\http\Services\Slider\SliderServices;
use Illuminate\Http\Request;

class Menu1Controller extends Controller
{
    protected $menuService;
    public function __construct(MenuService $menuService,
    productServices2 $product)
    {
        $this->menuService=$menuService;

        $this->product=$product;
    }

    public function index(Request $request,$id,$slug='')
    {
        $menu=$this->menuService->getId($id);
        $products=  $this->menuService->getProduct($menu);

        return view('menu',[
            'title'=>$menu->name,
            'products'=>$products,
            'menu'=>$menu
        ]);
    }

}
