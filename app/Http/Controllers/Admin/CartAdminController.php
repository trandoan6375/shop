<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Customers;
use Illuminate\Http\Request;
use App\Http\Services\CartServices;
class CartAdminController extends Controller
{
    protected $cart;
    public function __construct(CartServices $cart)
    {
        $this->cart=$cart;
    }
    public function index()
    {
        return view('admin.carts.customer',[
            'title'=>'Danh sách khách hàng',
            'customers'=>$this->cart->getCustomer()
        ]);
    }
    public function show(Customers $customer)
    {   $carts= $this->cart->getProductForCart($customer);
        return view('admin.carts.detail',[
            'title' =>  'Chi tiết đơn hàng : '. $customer->name,
            'customer'=>$customer,
            'carts'=> $carts
        ]);

    }
}
