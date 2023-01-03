<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Product;
use App\Slider;
use App\AboutUs;
use App\Cart;
use App\Category;
use App\Message;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function my_cart()
    {
            if(auth()->user()){
            $products = auth()->user()->cart;
            return view('cart',compact('products'));
            } else {
                $products = session()->get('cart');
                if(session()->has('cart') && count($products) > 0 ){
                foreach( session()->get('cart') as $product ){
                $prices[] =  $product->price_after * $product->qty;
                }
                $total = array_sum($prices);
                $quantity = 5;
                return view('cart',compact('products','total','quantity'));
        }
                return redirect()->back();
            }
    }



    public function add($product_id)
    {
        if(auth()->user()){
            $product = Product::where('id',$product_id)->first();

            if (auth()->user()->cart->contains('id', $product_id)){
            return redirect()->back();
          } else {
                Cart::create([
                    'product_id' => $product_id,
                    'user_id' => auth()->user()->id,
                    'price' => $product->price_after,
                ]);
                return redirect()->back();
          }
        } else {
            $product = Product::where('id',$product_id)->first();

            if(session()->has('cart')){

                $products = session()->get('cart');
                if($products->contains('id',$product->id)){

                    return redirect()->back();
                }
                else {
                $product->quantity = 1;
                $products->push($product);
                session()->put('cart',$products);
                }
            } else {

                $product->quantity = 1;
                $products = collect();
                $products->push($product);
                session()->put('cart',$products);
            }

            return redirect()->back();
        }
    }




    public function remove($product_id)
    {

     if(auth()->user()){

        $product = Cart::where('product_id',$product_id)->first();
        $product->delete();
        return redirect()->back();
     } else {

        $product = Cart::where('product_id',$product_id)->first();

        if(session()->has('cart')){
            $products = session()->get('cart');
            foreach( $products as $key => $item ){
                dd($item);
                if($item->id == $product->id ){
                    return 'done';
                    $products->pull($key);
                }
            }
            session()->put('cart',$products);
        }
        if(count($products) >= 1){
            return redirect()->back();
        }
        return redirect()->back();
     }


    }

    public function update_quantity($product,$qty)
    {
        if(auth()->user()){
            $products = auth()->user()->cart;
            $product = $products->where('id',$product)->first();
            $quantity = $product->pivot;
            $quantity->increment('quantity',$qty);

            return redirect()->back();
        }

    }


    public function checkout()
    {
        return view('checkout');
    }


}
