@extends('layouts.front')

@section('title')
    Category
@endsection

@section('content')
    {{-- <div class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Semua Kategori</h2>
                    <div class="row">
                        @foreach ($category as $cate)
                            <div class="col-md-3 mb-3">
                                <div class="card">
                                    <a href="{{ url('view-category/' . $cate->slug) }}">
                                        <img src="{{ asset('assets/uploads/category/' . $cate->image) }}"
                                            alt="Category image">
                                        <div class="card-body">
                                            <h5>{{ $cate->name }}</h5>
                                            <p>
                                                {{ $cate->description }}
                                            </p>
                                        </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div> --}}
    {{-- <div class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Trending Kategori</h2>
                    <div class="row">
                        @foreach ($category as $cate)
                            <div class="col-md-3 mb-3">
                                <div class="card" style="height: 25rem">
                                    <a href="{{ url('view-category/' . $cate->slug) }}">
                                        <img src="{{ asset('assets/uploads/category/' . $cate->image) }}"
                                            alt="Category image">
                                        <div class="card-body">
                                            <h5>{{ $cate->name }}</h5>
                                            <p>
                                                {{ $cate->description }}
                                            </p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div> --}}
    <h2 class="px-5 py-4 mx-5">Trending Kategori</h2>
    <div class="container" style="display: flex; gap: 2rem; flex-wrap: wrap">
        @foreach ($category as $cate)
            <div class="card" style="width: 20rem;">
                <a href="{{ url('view-category/' .$cate->slug) }}">
                    <img src="{{ asset('assets/uploads/category/' . $cate->image) }}" alt="Category image" width="318px" height="280px">
                    <div class="card-body">
                        <h5>{{ $cate->name }}</h5>
                        <p>
                            {{ $cate->description }}
                        </p>
                    </div>
                </a>
            </div>
        @endforeach
    </div>
@endsection
