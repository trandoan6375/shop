@extends('admin.main')
@section('content')
    <div class="card card-primary">

        <!-- /.card-header -->
        <!-- form start -->
        <form action="" method="post" enctype="multipart/form-data">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="menu">Tiêu đề</label>
                            <input type="text" name="name" value="{{$slider->name}}" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="menu">Đường dẫn</label>
                            <input type="text" name="url" value="{{$slider->url}}" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label>Ảnh sản Phẩm </label>
                    <input type="file" name="file" id="upload" class="form-control">
                    <div id="image_show">
                        <a href="{{$slider->thumb}}">
                            <img src="{{$slider->thumb}}" width="100px">
                        </a>
                    </div>
                    <input type="hidden" name="thumb" value="{{$slider->thumb}}" id="thumb">
                </div>


                <div class="form-group">
                    <label for="menu">Sắp xếp</label>
                    <input type="number" name="sort_by"  class="form-control" value="{{$slider->sort_by}}">
                </div>


                <div class="form-group">
                    <label>Kích hoạt</label>
                    <div class="custom-control custom-radio">
                        <input class="custom-control-input" value="1" type="radio" id="active" name="active"
                               {{ $slider->active == 1 ? 'checked' : ''}}>
                        <label for="active" class="custom-control-label">Có</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input class="custom-control-input" value="0" type="radio" id="no_actice" name="active"
                            {{ $slider->active == 0 ? 'checked' : ''}}>
                        <label for="no_actice" class="custom-control-label">Không</label>
                    </div>
                </div>

            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Cập nhật slider</button>
            </div>
            @csrf
        </form>
    </div>
@endsection



