<?php

namespace App\Http\Controllers\Admin\Users;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    public function index()
    {
        return view('admin.users.login',[
            'title'=>'Đăng nhập hệ thống'
            ]);
    }
    public function store(Request $request)
    {
        //dau tien thuc hien check form
        //neu chen level =1 tuc la adminuser/ con =2 ... la user
        $validatedData= $request->validate([
           'email'=>'required|email:filter',
            'password' =>'required'
        ]);
        if (Auth::attempt(['email' => $request->input('email'),
                'password' => $request->input('password')
        ],$request->input('remember')))
        {
            // Authentication was successful...
            return redirect()->route('admin');
        }
        Session::flash('error','Email Hoặc password không đúng');
        return redirect()->back();
    }

}
