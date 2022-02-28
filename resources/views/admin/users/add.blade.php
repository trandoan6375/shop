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
                    <label for="menu">Tên người dùng</label>
                    <input type="text" name="name" value="{{old('name')}}" class="form-control" placeholder="Nhập tên người dùng">
                </div>
                <div class="form-group">
                    <label for="menu">Email</label>
                    <input type="email" name="email" value="{{old('email')}}" class="form-control" placeholder="Nhập Email">
                </div>

                <div class="form-group">
                    <label for="menu">Mật khẩu</label>
                    <input type="password" name="password" class="form-control" placeholder="Nhập Mật khẩu">
                </div>



            </div>
            <!-- /.card-body -->

            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Tạo Người dùng</button>
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


