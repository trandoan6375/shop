@extends('admin.main')
@section('content')
    <table class="table">
        <thead>
        <tr>
            <th style="width: 50px;">ID</th>
            <th>Tiêu dề</th>
            <th>Link</th>
            <th>Ảnh</th>
            <th>Trạng thái</th>
            <th>Cập nhật</th>
            <th>&nbsp</th>
        </tr>

        </thead>
        <tbody>
        @foreach($sliders as $key => $slider)
            <tr>

                <th>{{$slider->id}}</th>
                <td>{{$slider->name}}</td>
                <td>{{$slider->url}}</td>
                <td><a href="{{$slider->thumb}}" target="_blank">
                        <img src="{{$slider->thumb}}" height="40px">
                    </a>
                </td>
                <td>{!! \App\Helpers\Helper::active($slider->active) !!}</td>
                <td>{{$slider->updated_at}}</td>
                <td>
                    <a class="btn btn-primary btb-sm" href="/admin/sliders/edit/{{$slider->id}}">
                        <i class="far fa-edit"></i>
                    </a>
                    <a class="btn btn-danger btb-sm"
                       onclick="removeRow({{$slider->id}},'/admin/sliders/destroy')">
                        <i class="far fa-trash-alt"></i>
                    </a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {!! $sliders->links() !!}
@endsection

