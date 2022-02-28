<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        return view('about',[
            'title'=>'Gửi thông tin cho chúng tôi!'
        ]);
    }
    public function error()
    {
        return view('error403');
    }
    public function adminlogin()
    {
        return redirect('admin');
    }
}
