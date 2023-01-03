<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Product;
use App\Slider;
use App\AboutUs;
use App\Category;
use App\Message;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    public function home()
    {
        $latest_products = Product::orderBy('id','desc')->limit(8)->get();
        $sliders = Slider::get();
        return view('home',compact('latest_products','sliders'));
    }

    public function contact_us()
    {
        $contact = AboutUs::first();
        return view('contact',compact('contact'));
    }

    public function send_message(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'subject' => 'required',
            'message' => 'required',
        ]);

        Message::create([
            'name' => $request->name,
            'email' => $request->email,
            'subject' => $request->subject,
            'message' => $request->message,
        ]);

        $contact = AboutUs::first();
        return view('contact',compact('contact'));
    }


    public function search(Request $request)
    {
            $keyword = $request->keyword;
            $query = Product::query();

        if(!empty($keyword)){
            $product = $query->where('name_ar','like','%'.$keyword.'%')
                             ->orWhere('name_en','like','%'.$keyword.'%')
                             ->orWhere('details_ar','like','%'.$keyword.'%')
                             ->orWhere('details_en','like','%'.$keyword.'%')
                             ->orWhereHas('category', function($q) use ($keyword){
                           $q->where('name_en','like','%'.$keyword.'%')
                             ->orWhere('name_ar','like','%'.$keyword.'%');
                             });

            $products = $product->paginate(6);
            $categories = Category::whereNull('deleted_at')->get();
            return view('products.index',compact('products','categories'));
        }
        return redirect()->back();
    }

}
