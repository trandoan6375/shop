<?php

namespace App\Http\Controllers;

use App\Http\Services\Product\productServices2;
use Illuminate\Http\Request;
use MongoDB\Driver\Session;

class SearchHomeController extends Controller
{
    protected $productServices;
    public function __construct(productServices2 $productServices)
    {
        $this->productServices=$productServices;
    }

    public function index(Request $request)
    {
        $products=$this->productServices->getSearch($request);
            return view('search',[
                'title'=>$request->input('search'),
                'products'=>$products
            ]);
    }
}
