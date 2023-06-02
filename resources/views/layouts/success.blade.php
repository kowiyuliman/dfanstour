<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
    @yield('title')
    </title>
    @stack('prepend-style')
    <link rel="stylesheet" href="./assets//font-awesome/all.min.css">
    @include('includes.style')
    @stack('addon-style')
</head>

<body>
    @include('includes.navbar-alternate')
    @yield('content')
    {{--  @include('prepend-script')  --}}
    @include('includes.script')
    @stack('add-script')
    
</body>

</html>