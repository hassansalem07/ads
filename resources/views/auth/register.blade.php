@include('header')
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">

			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="img/login.jpg" alt="">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Register</h3>
						<form class="row login_form" action="{{ route('register') }}" method="POST" >
                            @csrf
                            <div>
                            <div class="row mb-3 mt-10">
								<input  type="text" name="name" placeholder="Name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Name'"
								 required class="single-input">
                                 @error('name')
                                 <span class="invalid-feedback" role="alert">
                                     <strong>{{ $message }}</strong>
                                 </span>
                                 @enderror
							</div>
                            <div class="row mb-3 mt-10">
								<input type="email" name="email" placeholder="Email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'"
								 required class="single-input">
                                 @error('email')
                                 <span class="invalid-feedback" role="alert">
                                     <strong>{{ $message }}</strong>
                                 </span>
                                 @enderror
							</div>
							<div class="row mb-3 mt-10">
								<input type="tel" name="phone" placeholder="Phone" onfocus="this.placeholder = ''" onblur="this.placeholder = 'phone'"
								 required class="single-input">
                                 @error('phone')
                                 <span class="invalid-feedback" role="alert">
                                     <strong>{{ $message }}</strong>
                                 </span>
                                 @enderror
							</div>
							<div class="row mb-3 mt-10">
								<input type="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'"
								 required class="single-input">
                                 @error('email')
                                 <span class="invalid-feedback" role="alert">
                                     <strong>{{ $message }}</strong>
                                 </span>
                                 @enderror
							</div>
							<div class="row mb-3 mt-10">
								<input type="password" name="password_confirmation" placeholder="Password confirmation" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password confirmation'"
								 required class="single-input">
							</div>
							<div class="row mb-3 mt-10">
								<button type="submit" value="submit" class="primary-btn">Register</button>
							</div>
                          </div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->

	<!-- start footer Area -->
	@include('footer')
