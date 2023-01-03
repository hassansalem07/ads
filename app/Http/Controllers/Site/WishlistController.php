<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;


class WishlistController extends Controller
{
    public function index()
    {
        if(auth()->user()){
            $products = auth()->user()->products;
            return view('wishlist',compact('products'));
        }
            return redirect()->back();
    }


    public function add($product_id)
    {
        if(auth()->user()){
              $user = auth()->user();
              $user->products()->attach($product_id);
              return redirect()->back();
        }
              return redirect()->back();
    }


    public function remove($product_id)
    {
        if(auth()->user()){
               $user = auth()->user();
               $user->products()->detach($product_id);
               return redirect()->back();
        }
               return redirect()->back();
    }




}
