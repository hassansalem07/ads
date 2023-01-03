<?php

use App\Http\Controllers\Site\CartController;
use App\Http\Controllers\Site\HomeController;
use App\Http\Controllers\Site\ProductController;
use App\Http\Controllers\Site\WishlistController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes();

Route::get('/', function(){return redirect()->route('home');});

Route::get('/home', [HomeController::class, 'home'])->name('home');

Route::get('/contact', [HomeController::class, 'contact_us'])->name('contact');

Route::post('/search', [HomeController::class, 'search'])->name('search');

Route::post('/send-message', [HomeController::class, 'send_message'])->name('send.message');

Route::prefix('products')->group(function(){
    Route::get('/', [ProductController::class, 'index'])->name('products.index');
    Route::get('/category/{category_id}', [ProductController::class, 'products_by_category']);
    Route::get('/sort/{sort_by}', [ProductController::class, 'products_sort']);
    Route::get('/{category_id}/sort/{sort_by}', [ProductController::class, 'products_category_sort']);
    Route::get('/details/{product_id}', [ProductController::class, 'product_details'])->name('product.details');
});


Route::prefix('wishlist')->group(function(){
    Route::get('/', [WishlistController::class, 'index'])->name('wishlist.index');
    Route::get('/add/{product_id}', [WishlistController::class, 'add'])->name('wishlist.add');
    Route::get('/remove/{product_id}', [WishlistController::class, 'remove'])->name('wishlist.remove');
});


Route::prefix('cart')->group(function(){
    Route::get('/', [CartController::class, 'my_cart'])->name('my.cart');
    Route::get('/add/{product_id}', [CartController::class, 'add'])->name('cart.add');
    Route::get('/remove/{product_id}', [CartController::class, 'remove'])->name('cart.remove');
    Route::get('quantity/{product}/{qty}',[CartController::class , 'update_quantity'])->name('cart.quantity');
    Route::get('checkout',[CartController::class , 'checkout'])->name('checkout');
});






