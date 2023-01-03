<?php

namespace App\Http\Controllers\Site;

use App\Category;
use App\Http\Controllers\Controller;
use App\Product;
use App\ProductImage;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index ()
    {
        $products = Product::whereNull('deleted_at')->orderBy('id','desc')->paginate(6);
        $categories = Category::whereNull('deleted_at')->get();
        return view('products.index',compact('products','categories'));
    }

    public function product_details ($product_id)
    {
        $product = Product::where('id',$product_id)->first();
        $images = ProductImage::where('product_id',$product_id)->get();
        $relates =  Product::where('category_id',$product->category_id)->inRandomOrder()->limit(9)->get();

        return view('products.details',compact('product','images','relates'));
    }

    public function products_by_category ($category_id)
    {
        $products = Product::whereNull('deleted_at')->where('category_id',$category_id)->orderBy('id','desc')->paginate(6);
        $categories = Category::whereNull('deleted_at')->get();
        return view('products.category',compact('products','categories','category_id'));
    }

    public function products_sort ($sort_by)
    {
        if($sort_by == 'price-low-to-high')
        {
            $products = Product::whereNull('deleted_at')->orderBy('price_after')->paginate(6);
            $categories = Category::whereNull('deleted_at')->get();
            return view('products.sort',compact('products','categories','sort_by'));
        }
        if($sort_by == 'price-high-to-low')
        {
            $products = Product::whereNull('deleted_at')->orderBy('price_after','desc')->paginate(6);
            $categories = Category::whereNull('deleted_at')->get();
            return view('products.sort',compact('products','categories','sort_by'));
        }
        if($sort_by == 'date-old-to-new')
        {
            $products = Product::whereNull('deleted_at')->orderBy('created_at')->paginate(6);
            $categories = Category::whereNull('deleted_at')->get();
            return view('products.sort',compact('products','categories','sort_by'));
        }
        if($sort_by == 'date-new-to-old')
        {
            $products = Product::whereNull('deleted_at')->orderBy('created_at','desc')->paginate(6);
            $categories = Category::whereNull('deleted_at')->get();
            return view('products.sort',compact('products','categories','sort_by'));
        }
    }

    public function products_category_sort ($category_id , $sort_by )
    {
        if($sort_by == 'price-low-to-high')
        {
            $products = Product::whereNull('deleted_at')->where('category_id',$category_id)->orderBy('price_after')->paginate(6);
            $categories = Category::whereNull('deleted_at')->get();
            return view('products.category-sort',compact('products','categories','sort_by','category_id'));
        }
        if($sort_by == 'price-high-to-low')
        {
            $products = Product::whereNull('deleted_at')->where('category_id',$category_id)->orderBy('price_after','desc')->paginate(6);
            $categories = Category::whereNull('deleted_at')->get();
            return view('products.category-sort',compact('products','categories','sort_by','category_id'));
        }
        if($sort_by == 'date-old-to-new')
        {
            $products = Product::whereNull('deleted_at')->where('category_id',$category_id)->orderBy('created_at')->paginate(6);
            $categories = Category::whereNull('deleted_at')->get();
            return view('products.category-sort',compact('products','categories','sort_by','category_id'));
        }
        if($sort_by == 'date-new-to-old')
        {
            $products = Product::whereNull('deleted_at')->where('category_id',$category_id)->orderBy('created_at','desc')->paginate(6);
            $categories = Category::whereNull('deleted_at')->get();
            return view('products.category-sort',compact('products','categories','sort_by','category_id'));
        }
    }



}
