<?php
namespace App\Http\Services;
class UploadServices
{
    public function store($request)
    {
        if($request->hasFile('file'))
        {
            try{

                $name = $request->file('file')->getClientOriginalName();
                //lay ten va duoi file
                $pathFull= 'uploads/'.date("Y/m/d");

                $request->file('file')->storeAs(
                    'public/'.$pathFull, $name
                );
                //dua duong dan luu tru bang storage va hien thi trong public ngoai app
                //muốn fix đường dẫn vào config -> filesystem

                return '/storage/'.$pathFull.'/'.$name;
            }
            catch (\Exception $error){
                return false;
            }
        }
    }
}
