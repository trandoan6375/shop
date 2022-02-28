@extends('admin.main')
@section('content')
    <table class="table">
        <thead>
        <tr>
            <th style="width: 50px;">ID</th>
            <th>Tên sản phẩm</th>
            <th>Danh mục</th>
            <th>Giá gốc</th>
            <th>Giá Khuyến mãi</th>
            <th>Active</th>
            <th>Update</th>
            <th>&nbsp</th>
        </tr>

        </thead>
        <tbody>
        @foreach($products as $key => $product)
            <tr>

                <th>{{$product->id}}</th>
                <td>{{$product->name}}</td>
                <td>{{$product->menu->name}}</td>
                <td>{{$product->price}}</td>
                <td>{{$product->price_sale}}</td>
                <td>{!! \App\Helpers\Helper::active($product->active) !!}</td>
                <td>{{$product->updated_at}}</td>
                <td>
                    <a class="btn btn-primary btb-sm" href="/admin/products/edit/{{$product->id}}">
                        <i class="far fa-edit"></i>
                    </a>
                    <a class="btn btn-danger btb-sm"
                       onclick="removeRow({{$product->id}},'/admin/products/destroy')">
                        <i class="far fa-trash-alt"></i>
                    </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection

