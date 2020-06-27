<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class ProductController extends Controller
{
    public function index(){
    	$products = Product::get();
    	return view('product',compact('products'));
    }

    public function upload(){
    	$productArray = [];
    	$productXML = public_path().'/product.xml';
    	$xml1 = file_get_contents($productXML);
    	
    	$xml = simplexml_load_string($xml1, "SimpleXMLElement", LIBXML_NOCDATA);
		$json = json_encode($xml);
		$array = json_decode($json,TRUE);

		foreach ($array['product']['catalog_item'] as $key => $value) {

			$item  = $value['item_number'];
			$price  = $value['price'];
			$product = array_combine($item,$price);
			$productArray[] = $product;
		}

		$all_product = array_merge(...array_values($productArray));

		foreach ($all_product as $key => $value) {
			$product = Product::firstOrNew(['name' => $key]);
			$product->name = $key;
			$product->price = $value;
			$product->save();
		}

		return redirect('import-product')->with('status','Product Updated successfully!');
    }
}
