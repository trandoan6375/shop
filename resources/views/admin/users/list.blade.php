@extends('admin.main')
@section('content')
    <table class="table">
        <thead>
        <tr>
            <th style="width: 50px;">ID</th>
            <th>Name</th>
            <th>Chức danh</th>
            <th>Email</th>
            <th>Lever</th>
            <th>&nbsp;</th>
        </tr>

        </thead>
        <tbody>
        @foreach($manages as $key => $manage)
            <td>{{ $manage->id }}</td>
            <td>{{ $manage->name }}</td>
            <td>{{ $manage->position }}</td>
            <td>{{ $manage->email }}</td>
            <td>{{ $manage->level }}</td>
            <td>
                <a class="btn btn-primary btb-sm" href="/admin/manage/edit/'.$manage->id.'">
                    <i class="far fa-edit"></i>
                </a>
                <a class="btn btn-danger btb-sm"
                   onclick="removeRow('.$manage->id.',\'/admin/manage/destroy\')">
                    <i class="far fa-trash-alt"></i>
                </a>
            </td>
        @endforeach
        </tbody>
    </table>
@endsection

