@extends('layouts.checkout')
@section('title', 'Checkout')


@section('content')
    <main>
        <section class="section-details-header"></section>
        <section class="section-details-content">
            <div class="container">
                <div class="row">
                    <div class="col p-0">
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    Paket Travel
                                </li>
                                <li class="breadcrumb-item active">
                                    Details
                                </li>
                                <li class="breadcrumb-item active">
                                    Checkout
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 pl-lg-o">
                        <div class="card card-details">
                            @if ($errors->any())
                                <div class:"alert alert-danger">
                                    <ul>
                                        @foreach($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            <h1>Who is going?</h1>
                            <p>
                                Trip to {{$item->travel_package->title }}, {{ $item->travel_package->location }}
                            </p>
                            <div class="attendee">
                                <table class="table table-responsive-sm text-center">
                                    <thead>
                                        <tr>
                                            <td>Picture</td>
                                            <td>No</td>
                                            <td>Name</td>
                                            <td>Address</td>
                                            <td>Departure Date</td>
                                            <td></td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @forelse ($item->details as $detail)
                                    <tr>
                                        <td>
                                            <img src="https://ui-avatars.com/api/?name={{ $detail->username }}"
                                            height="60" class="rounded-circle" />
                                        </td>
                                        <td class="align-middle">
                                            {{ $detail->transactions_id }}
                                        </td>
                                        <td class="align-middle">
                                            {{ $detail->username }}
                                        </td>
                                        <td class="align-middle">
                                            {{ $detail->address }}
                                        </td>
                                        <td class="align-middle">
                                            {{ $item->travel_package->departure_date }}
                                        </td>
                                        <td class="align-middle">
                                            <a href="{{ route('checkout-remove', $detail->id) }}">
                                                <img src="{{ url('frontend/images/ic_remove.png') }}" alt="" width="20px" height="20px"/>
                                            </a>
                                        </td>
                                    </tr>
                                    @empty
                                    <tr>
                                        <td colspan="6" class="text-center">
                                            No Visitor
                                        </td>
                                    </tr>
                                    @endforelse
                                    </tbody>
                                </table>
                            </div>
                            <div class="member mt-3">
                                <h2>Add Member</h2>
                                <form class="form-inline" method="post" action="{{ route('checkout-create', $item->id ) }}">
                                    @csrf
                                    <label for="Input" class="sr-only">Name</label>
                                        <input 
                                        type="text"
                                        name="username"
                                        class="form-control mb-2 mr-sm-2"
                                        id="username"
                                        required
                                        placeholder="Username"
                                        /> 
                                    <label for="address" class="sr-only">Address</label>
                                        <input 
                                        type="text"kk
                                        name="address"
                                        class="form-control mb-2 mr-sm-2"
                                        id="address"
                                        required
                                        placeholder="Address"
                                        />
                                    <button type="submit" class="btn btn-add-now mb-2 px-4">
                                        Add Now
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card card-details card-right">
                            <h2>Checkout Informations</h2>
                            <table class="trip-informations">
                                <tr>
                                    <th width="50%">Members</th>
                                    <td width="50%" class="text-right">
                                        {{ $item->details->count()}} person
                                    </td>
                                </tr>
                                <tr>
                                    <th width="50%">Trip Price</th>
                                    <td width="50%" class="text-right">
                                    Rp.   {{ number_format($item->travel_package->price, 0, ',', '.') }} / person
                                    </td>
                                </tr>
                                <tr>
                                    <th width="50%">Minimal</th>
                                    <td width="50%" class="text-right text-total">
                                        <span class="text-blue">20 PAX</span>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <th width="50%">Sub Total</th>
                                    <td width="50%" class="text-right text-total">
                                        <span class="text-blue">Rp. {{ number_format($item->transaction_total, 0, ',', '.') }}</span>
                                        
                                    </td>
                                </tr>
                                
                            </table>
                            <hr />
                            <h2>Payment Instruction</h2>
                            <p class="payment-instructions">
                                Please complete your payment before to continue
                                the wonderful trip
                            </p>
                            <div class="bank">
                                <div class="bank-item pb-3">
                                    <img src="/frontend/images/logo.jpeg" alt="#" class="bank-image">
                                    <div class="description">
                                        <h3>DFANNIS TOUR</h3>
                                        <p>
                                            6310 4414 04
                                        <br>
                                            Bank Central Asia
                                        </P>
                                    </div>
                                    <!-- <div class="clearfix"></div>
                                    <div class="bank-item pb-3">
                                        <img src="#" alt="#" class="bank-image">
                                        <div class="description">
                                            <h3>DFANS TOUR</h3>
                                            <p>
                                                083844437978
                                            <br>
                                                Bank Central Asia
                                            </P>
                                        </div>
                                </div>
                                <div class="clearfix"></div> -->
                            </div>
                        </div>
                        <div class="join-container">
                            <a href="{{ route('checkout-success', $item->id )}}" class="btn btn-block btn-join-now mt-3 py-2">
                                I Have Made Payment
                            </a>
                        </div>
                        <div class="text-center mt-3">
                            <a href="{{ route('detail', $item->travel_package->slug )}}" class="btn btn-block btn-cancel mt-3 py-2 text-muted">
                                Cancel Booking
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
@stop