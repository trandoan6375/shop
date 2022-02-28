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
                        <input type="text" name="name" value="{{old('name')}}" class="form-control">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="menu">Đường dẫn</label>
                        <input type="text" name="url" value="{{old('url')}}" class="form-control">
                    </div>
                </div>
                </div>
                <div class="form-group">
                    <label>Ảnh sản Phẩm </label>
                    <input type="file" name="file" id="upload" class="form-control">
                    <div id="image_show">

                    </div>
                    <input type="hidden" name="thumb" id="thumb">
                </div>


                <div class="form-group">
                    <label for="menu">Sắp xếp</label>
                    <input type="number" name="sort_by"  class="form-control" value="1">
                </div>


                <div class="form-group">
                    <label>Kích hoạt</label>
                    <div class="custom-control custom-radio">
                        <input class="custom-control-input" value="1" type="radio" id="active" name="active"
                               checked="">
                        <label for="active" class="custom-control-label">Có</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input class="custom-control-input" value="0" type="radio" id="no_actice" name="active"
                               checked="">
                        <label for="no_actice" class="custom-control-label">Không</label>
                    </div>
                </div>

            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Tạo slider</button>
            </div>
            @csrf
        </form>
    </div>
@endsection



