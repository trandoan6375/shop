<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\CartServices;
use Illuminate\Support\Facades\Session;

class CartController extends Controller
{
    protected $cart;
    public  function  __construct(CartServices $cart)
    {
        $this->cart=$cart;
    }
    public function index(Request $request)
    {
         $result = $this->cart->create($request);

        if($result ==false){
            return redirect()->back();
        }
        return redirect('/carts');
    }
    public function show()
    {
        $products = $this->cart->getProduct();
        return view('carts.list',[
            'title'=>'Danh sách giỏ hàng',
            'products'=>$products,
            'carts'=>Session::get('carts')
        ]);
    }
    public function update(Request $request)
    {
        $result=$this->cart->update($request);
        return redirect('/carts');
    }
    public function remove($id = 0)
    {
        $this->cart->remove($id);
        return redirect('/carts');
    }
    public function addcart(Request $request)
    {
        $this->cart->addcart($request);

        return redirect()->back();
    }
}
