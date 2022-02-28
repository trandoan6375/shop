<?php

namespace App\Http\Services\Product;

use App\Models\Product;
use Illuminate\Support\Facades\Session;
use function PHPUnit\Framework\isNull;

class productServices2
{
    const LIMIT=16;
    public function get($page = null)
    {
        return Product::select('id','name','price','price_sale','thumb')
            ->orderByDesc('id')
            ->when($page != null,function ($query) use ($page){
                $query->offset($page * self::LIMIT);
            })
            ->limit(self::LIMIT)
            ->get();
    }
    public  function show($id)
    {
        return Product::where('id',$id)
            ->where('active',1)
            ->with('menu')
            ->firstOrFail();
    }
    public  function more($id)
    {
        return Product::select('id', 'name', 'price', 'price_sale', 'thumb')
            ->where('active',1)
            ->where('id','!=',$id)
            ->orderByDesc('id')
            ->limit(8)
            ->get();

    }
    public function getSearch($request)
    {

            return Product::where('name','like','%'.$request->search.'%')
                ->orWhere('price_sale',$request->search)
                ->orderByDesc('id')
                ->get();



    }
}
