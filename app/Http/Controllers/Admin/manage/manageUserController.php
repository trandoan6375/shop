<?php

namespace App\Http\Controllers\Admin\manage;

use App\Http\Controllers\Controller;
use App\Http\Services\manage\manageServices;
use Illuminate\Http\Request;
use App\Http\Requests\Manage\ManageRequest;
class manageUserController extends Controller
{
    protected $manage;
    public function __construct(manageServices $manage)
    {
        $this->manage=$manage;
    }
    public function index()
    {
        return view('admin.users.list',[
            'title'=>'Danh sách user',
            'manages'=>$this->manage->getuser()
        ]);
    }
    public function create()
    {
        return view('admin.users.add',[
            'title'=>'Thêm người dùng'
        ]);
    }
    public function store(ManageRequest $request)
    {
        $this->manage->insert($request);
        return redirect()->back();
    }
}
