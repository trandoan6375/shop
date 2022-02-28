@extends('admin.main')
@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection
@section('content')
    <div class="card card-primary">

        <!-- /.card-header -->
        <!-- form start -->
        <form action="" method="post" enctype="multipart/form-data">
            <div class="card-body">
                <div class="form-group">
                    <label for="menu">Tên Sản Phẩm</label>
                    <input type="text" name="name" value="{{old('name')}}" class="form-control" placeholder="Nhập tên Sản Phẩm">
                </div>
                <div class="form-group">
                    <label >Danh mục</label>
                    <select class="form-control" name="menu_id">
                        @foreach($menus as $menu)
                            <option value="{{$menu->id}}">{{$menu->name}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="menu">Giá gốc</label>
                    <input type="text" name="price" class="form-control" placeholder="Nhập Giá gốc"
                           value="{{old('price')}}">
                </div>
                <div class="form-group">
                    <label for="menu">Giá giảm</label>
                    <input type="text" name="price_sale" class="form-control" placeholder="Nhập Giá giảm"
                           value="{{old('price_sale')}}">
                </div>
                <div class="form-group">
                    <label>Mô tả</label>
                    <textarea name="description" class="form-control">{{old('description')}}</textarea>
                </div>
                <div class="form-group">
                    <label>Mô tả Chi tiết </label>
                    <textarea name="content" id="content" name="content" class="form-control">
                        {{old('content')}}
                    </textarea>
                </div>
                <div class="form-group">
                    <label>Ảnh sản Phẩm </label>
                    <input type="file" name="file" id="upload" class="form-control">
                    <div id="image_show">

                    </div>
                    <input type="hidden" name="thumb" id="thumb">
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
                <button type="submit" class="btn btn-primary">Tạo Sản Phẩm</button>
            </div>
            @csrf
        </form>
    </div>
@endsection
@section('footer')
    <script>
        CKEDITOR.replace( 'content' );
    </script>
@endsection


