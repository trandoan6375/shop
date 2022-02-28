@extends('admin.main')
@section('content')
    <table class="table">
        <thead>
        <tr>
            <th style="width: 50px;">ID</th>
            <th>Tên Khách hàng</th>
            <th>Số điện thoại</th>
            <th>Email</th>
            <th>Ngày đặt hàng</th>
            <th>&nbsp</th>
        </tr>

        </thead>
        <tbody>
        @foreach($customers as $key => $customer)
            <tr>

                <th>{{$customer->id}}</th>
                <td>{{$customer->name}}</td>
                <td>{{$customer->phone}}</td>
                <td>{{$customer->email}}</td>
                <td>{{$customer->created_at}}</td>
                <td>
                    <a class="btn btn-primary btb-sm" href="/admin/customers/view/{{$customer->id}}">
                        <i class="fas fa-eye"></i>
                    </a>
                    <a class="btn btn-danger btb-sm"
                       onclick="removeRow({{$customer->id}},'/admin/customers/destroy')">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    <div class="card-footer clearfix">
        {!! $customers->links() !!}
    </div>
@endsection

