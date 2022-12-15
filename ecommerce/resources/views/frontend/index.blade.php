@extends('layouts.front')

@section('title')
    Karyain Shop
@endsection

@section('content')
    @include('layouts.inc.slider')

    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>Featured Product</h2>
                <div class="owl-carousel featured-carousel owl-theme">
                    @foreach ($featured_products as $prod)
                        <div class="item">
                            <div class="card" style="height: 25rem;">
                                <img src={{ asset('assets/uploads/products/' . $prod->image) }} height="300px" width="800px"
                                    class="card-img-top" style="background-size: cover" alt="...">
                                <div class="card-body">
                                    <h5>{{ $prod->name }}</h5>
                                    <span class="float-start">{{ $prod->selling_price }}</span>
                                    <span class="float-end"> <s> {{ $prod->original_price }} </s> </span>
                                </div>
                            </div>
                            {{-- <div class="card">
                                <img src="{{ asset('assets/uploads/products/' . $prod->image) }}" alt="Product image">
                                <div class="card-body">
                                    <h5>{{ $prod->name }}</h5>
                                    <span class="float-start">{{ $prod->selling_price }}</span>
                                    <span class="float-end"> <s> {{ $prod->original_price }} </s> </span>
                                </div>
                            </div> --}}
                        </div>
                    @endforeach
                </div>





                <div class="py-5">
                    <div class="container">
                        <div class="row">
                            <h2>Trending Kategori</h2>
                            <div class="owl-carousel featured-carousel owl-theme">
                                @foreach ($trending_category as $category)
                                    <div class="item">
                                        <a href="{{ url('view-category/'.$category->slug) }}">
                                            <div class="card" style="height: 25rem;">
                                                <img src={{ asset('assets/uploads/category/' . $category->image) }}
                                                    height="300px" width="700px" class="card-img-top"
                                                    style="background-size: cover" alt="...">
                                                <div class="card-body">
                                                    <h5>{{ $category->name }}</h5>
                                                    <p>{{ $category->description }}</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            @endsection

            @section('scripts')
                <script>
                    $('.featured-carousel').owlCarousel({
                        loop: true,
                        margin: 10,
                        nav: true,
                        dots: false,
                        responsive: {
                            0: {
                                items: 1
                            },
                            600: {
                                items: 3
                            },
                            1000: {
                                items: 4
                            }
                        }
                    })
                </script>
            @endsection
