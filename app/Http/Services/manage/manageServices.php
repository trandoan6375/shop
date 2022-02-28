<?php

namespace App\Http\Services\manage;

use App\Models\Product;
use App\Models\User;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;

class manageServices
{
    public function getuser()
    {
        return User::orderByDesc('id')->paginate(5);
    }
    public function insert($request)
    {
        try
        {
            User::create($request->all());

            Session::flash('success','Thêm Người dùng thành công');
        }catch (\Exception $err)
        {
            Session::flash('error',$err->getMessage());
            return false;
        }
        return true;
    }
}
