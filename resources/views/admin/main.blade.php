
<!DOCTYPE html>
<html lang="en">
<head>
    @include('admin.head')
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
            <!-- Bỏ bớt-->
        </ul>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
            <!-- Navbar Search bỏ -->


            <!-- Messages Dropdown Menu bỏ-->

            <!-- Notifications Dropdown Menu bỏ-->

            <li class="nav-item">
                <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                    <i class="fas fa-expand-arrows-alt"></i>
                </a>
            </li>
            <!-- bỏ thêm -->
        </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    @include('admin.sidebar')


    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <!--bỏ séction -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                @include('admin.alert')
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-12">
                        <!-- jquery validation -->
                        <div class="card card-primary mt-3">
                            <div class="card-header">
                                <h3 class="card-title">{{ $title }}</h3>
                                <form action="search" method="get" style="float: right;">
                                    <input class="search-title" type="search" name="search" placeholder="Bạn muốn tìm gì?">
                                    <button type="submit" class="flex-c-m trans-04">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </form>
                            </div>
                            @yield('content')

                        </div>
                        <!-- /.card -->
                    </div>
                    <!--/.col (left) -->
                    <!-- right column -->
                    <div class="col-md-6">

                    </div>
                    <!--/.col (right) -->
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="float-right d-none d-sm-block">
            <b>Version</b> 3.1.0
        </div>
        <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
    </footer>

    <!-- Control Sidebar -->

    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

@include(('admin.footer'))

</body>
</html>
