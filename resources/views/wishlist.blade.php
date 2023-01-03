@include('header')


    <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Wishlist</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="category.html">Wishlist</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!--================Cart Area =================-->
    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Wishlist Products</th>
                                <th scope="col">Price</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($products as $product)
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="col-sm-3">
                                            <img class="img-fluid" src="{{asset('images/product/'.$product->image)}}" alt="{{$product->name_en}}">
                                        </div>
                                        <div class="media-body">
                                            <a href="/products/details/{{$product->id}}" class="title">{{$product->name_en}}</a>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <h5>LE {{$product->price_after}}</h5>
                                    </div>
                                </td>
                                <td>
                                    <div class="cupon_text d-flex align-items-center">
                                        <a class="primary-btn" href="{{route('cart.add',$product->id)}}"><i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                        </a>
                                    </div>
                                </td>
                                <td>
                                    <div class="cupon_text d-flex align-items-center">
                                        <a class="primary-btn" href="/wishlist/remove/{{$product->id}}"><i class="fa fa-trash"></i>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->
    @include('footer')
