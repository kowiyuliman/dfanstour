@extends('layouts.app')

@section('content')
<main class="login-container">
    <div class="container">
        <div class="row page-login d-flex align-items-center">
            <div class="section-left col-12 col-md-6">
                <h1 class="mb-4">We explore the new <br> life much better</h1>
                <img src="/frontend/images/login-image.png" alt="" class="w-75 d-none d-sm-flex">
            </div>
            <div class="section-right col-12 col-md-4">
                <div class="card">
                {{--  <div class="card-header">{{ __('Login') }}</div>  --}}
                    <div class="card-body">
                        <img src="/frontend/images/logo.jpeg" alt="" class="w-50 mb-4">
                        <form method="POST" action="{{ route('login') }}">
                        @csrf
                            <div class="form-group">
                              <label for="email">{{ __('Email Address') }}</label>
                              <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                              name="email" value:"{{ old('email') }}" required autocomplete="email" autofocus>
                              @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                              <label for="password">{{ __('Password') }}</label>
                              <input type="password" class="form-control @error('password') is-invalid @enderror"
                              id="password" name="password" required autocomplete="current-password">
                               @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-check">
                              <input type="checkbox" class="form-check-input" id="remember">
                              <label class="form-check-label" for="remember">{{ __('Remember Me') }}</label>
                            </div>
                            <button type="submit" class="btn btn-login btn-block">
                            {{ __('Login') }}
                            </button>
                                <button class="btn btn-login btn-block">
                                <a href="{{ route('register') }}">
                                        Register
                                    </a>
                                </button>
                            @if (Route::has('password.request'))
                            <p class="text-center mt-4">
                                <a href="#">{{ __('Forgot Your Password?') }}</a>
                            </p>
                            @endif
                          </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection
