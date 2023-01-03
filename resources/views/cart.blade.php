    @include('header')


    <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Shopping Cart</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="category.html">Cart</a>
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
                                <th scope="col">Product</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Total</th>
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
                                    <h5>LE {{$product->price_after}}</h5>
                                </td>
                                <td class="cart_quantity">
                                    <div class="cart_quantity_button">
                                    <a class="cart_quantity_up" href="{{route('cart.quantity',[$product->id , 1])}}"> + </a>
                                    @if (!empty($product->pivot->quantity))
                                    <input class="cart_quantity_input" type="text" name="quantity" value="{{$product->pivot->quantity}}" autocomplete="off" size="2">
                                    @endif

                                       {{-- @if($product->quantity > 1) --}}
                                      <a class="cart_quantity_down" href="{{route('cart.quantity',[$product->id , -1])}}"> - </a>
                                      {{-- @endif --}}
                                </div>
                                </td>


                                <td>
                                    @if (!empty($product->pivot->quantity))
                                    <div class="cupon_text d-flex align-items-center">
                                        <h5>LE {{$product->price_after * $product->pivot->quantity}}</h5>
                                    </div>
                                    @endif
                                </td>
                                <td>
                                    <div class="cupon_text d-flex align-items-center">
                                        <a class="primary-btn" href="/cart/remove/{{$product->id}}"><i class="fa fa-trash"></i>
                                        </a>
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                            <tr class="bottom_button">
                                <td>
                               </td>
                                <td>
                               </td>

                               <td>
                                <div class="cupon_text d-flex align-items-center">
                                    <label for="">if you have a disscount coupon, please enter the code</label>
                                    <input type="text" placeholder="Coupon Code">
                                    <a class="primary-btn" href="#">Apply</a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td>

                            </td>
                            <td>
                                <h5>Subtotal</h5>
                            </td>
                            <td>
                                <h5>$2160.00</h5>
                            </td>
                        </tr>
                        <tr class="shipping_area">
                            <td>

                            </td>
                            <td>

                            </td>
                            <td>
                                <h5></h5>
                            </td>
                            <td>

                            </td>
                        </tr>
                        <tr class="out_button_area">
                            <td>

                            </td>
                            <td>

                            </td>
                            <td>

                            </td>
                            <td>
                                <div class="checkout_btn_inner d-flex align-items-center">
                                    <a class="gray_btn" href="{{route('products.index')}}">Continue Shopping</a>
                                    <a class="primary-btn" href="{{route('checkout')}}">Proceed to checkout</a>
                                </div>
                            </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->

    @include('footer')
