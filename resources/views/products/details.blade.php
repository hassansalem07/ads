@include('header')
	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Product Details Page</h1>
					<nav class="d-flex align-items-center">
						<a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">Shop<span class="lnr lnr-arrow-right"></span></a>
						<a href="single-product.html">product-details</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	<!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="s_Product_carousel">
                        @foreach ($images as $image)
                        <div class="single-prd-item">
							<img class="img-fluid" src="{{asset('images/product/'.$image->image)}}" alt="">
						</div>
                        @endforeach
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3>{{$product->name_en}}</h3>
						<h2>LE {{$product->price_after}}</h2>
						<ul class="list">
							<li><a class="active" href="/products/category/{{$product->category->id}}"><span>Category</span> : {{$product->category->name_en}}</a></li>
							<li><a href="#"><span>Availibility</span> @if($product->at_stock == 1)
                                <span class="text-success"> : In Stock</span> @else  <span class="text-danger"> : Out Of Stock</span> @endif</a></li>
						</ul>
						<p>{{$product->details_en}}</p>
						<div class="product_count">
							<label for="qty">Quantity:</label>
							<input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
							 class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
							 class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
						</div>
						<div class="card_area d-flex align-items-center">
							<a class="primary-btn" href="{{route('cart.add',$product->id)}}">Add to Cart</a>
							<a class="icon_btn" href="{{route('wishlist.add',$product->id)}}"><i class="lnr lnr lnr-heart"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
            <hr>
		</div>
	</section>
	<!--================End Product Description Area =================-->

	<!-- Start related-product Area -->
	<section class="related-product-area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-4 text-center">
					<div class="section-title">
						<h1>Related Products</h1>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-9">
					<div class="row">
                        @foreach ($relates as $relate)
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="/products/details/{{$relate->id}}"><img class="img-fluid" src="{{asset('images/product/'.$relate->image)}}" alt="{{$relate->name_en}}"></a>
								<div class="desc">
									<a href="/products/details/{{$relate->id}}" class="title">{{$relate->name_en}}</a>
									<div class="price">
										<h6>{{$relate->price_after}}</h6>
										<h6 class="l-through">{{$relate->price_before > $relate->price_after ? " LE ". $relate->price_before : null}}</h6>
									</div>
								</div>
							</div>
						</div>
                        @endforeach
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End related-product Area -->
	@include('footer')
