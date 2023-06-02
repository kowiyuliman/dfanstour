
@extends('layouts.success')

@section('title', 'Checkout Success')


@section('content')
<main>
<div class="section-success d-flex align-items-center">
    <div class="col text-center">
        <img src="{{ url('frontend/images/success.png') }}" width="180px" alt="#">
        <h1>Yeyy Success</h1>
        <p>
            We have sent you email for trip instruction
            <br />
            please read it as wall
        </p>
        <a href="{{ url('/') }}" class="btn-home-page mt-3 px-5">
            Home Page
        </a>
    </div>
</div>
</main>

@stop


