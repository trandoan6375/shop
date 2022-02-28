<?php

namespace App\Http\Requests\Manage;

use Illuminate\Foundation\Http\FormRequest;

class ManageRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'=>'required',
            'email'=>'required',
            'password'=>'required'
        ];
    }
    public function messages()
    {
        return [
            'name.required' => 'Tên không để trống',
            'email.required' => 'email không để trống',
            'password.required' => 'pass không để trống'
        ];
    }
}
