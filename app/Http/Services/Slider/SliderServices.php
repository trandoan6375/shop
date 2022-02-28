<?php

namespace App\http\Services\Slider;

use App\Models\Slider;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use mysql_xdevapi\Exception;

class SliderServices
{
    public function insert($request)
    {
        try{
            $request->except('_token');
            Slider::create($request->input());
            Session::flash('success','Tạo slider thành công');

        }
        catch (Exception $err)
        {
            Session::flash('error','Tạo slider Lỗi');
            Log::info($err->getMessage());
            return false;
        }
        return true;
    }
    public function show()
    {
        return Slider::where('active',1)->orderbyDesc('sort_by')->get();
    }
    public function get()
    {
        return Slider::orderbyDesc('id')->paginate(15);
    }
    public function update($request,$slider)
    {
        try {
            $slider->fill($request->input());
            $slider->save();
            Session::flash('success','Cập nhật thành công');
        }
        catch (Exception $err)
        {
            Session::flash('error','Cập nhật fail');
            Log::info($err->getMessage());
            return false;
        }
        return true;
    }
    public function destroy($request)
    {
        $slider = Slider::where('id',$request->input('id'))->first();
        if($slider)
        {
            $path = str_replace('storage','public',$slider->thumb);
            Storage::delete($path);
            $slider->delete();
            return true;
        }
        return false;
    }
}
