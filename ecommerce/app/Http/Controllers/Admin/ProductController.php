<?php

namespace App\Http\Controllers\Admin;

Use App\Models\Product;
Use App\Models\Category;
Use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;

class ProductController extends Controller
{
    public function index()
    {
       $products = Product::all();
       return view('admin.product.index', compact('products'), [
        'title' => 'Products'
       ]);
    }

    public function add()
    {
        $categories = Category::all();
        return view('admin.product.add',compact('categories'),[
            'title' => 'Add Products'
        ]);
    }
    public function insert(Request $request)
    {
        $products = new Product();
        if($request->hasFile('image'))
        {
            $file = $request->file('image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $file->move('assets/uploads/products/',$filename);
            $products->image = $filename;
        }
        $products->cate_id = $request->input('cate_id');
        $products->name = $request->input('name');
        $products->slug = $request->input('slug');
        $products->small_description = $request->input('small_description');
        $products->description = $request->input('description');
        $products->original_price = $request->input('original_price');
        $products->selling_price = $request->input('selling_price');
        $products->tax = $request->input('tax');
        $products->qty = $request->input('qty');
        $products->status = $request->input('status') == TRUE ? '1':'0';
        $products->trending = $request->input('trending') == TRUE ? '1':'0';
        $products->meta_title = $request->input('meta_title');
        $products->meta_keywords = $request->input('meta_keywords');
        $products->meta_description = $request->input('meta_description');
        $products->save();
        return redirect('products')->with('status',"Product Added Successfully");
    }

    public function edit($id)
    {
    $category = Category::all();
    $product = Product::find($id);
    return view('admin.product.edit', compact('product', 'category'), [
        "title" => "Products"
    ]);
    }

    public function destroy($id)
    {
        $products = Product::find($id);
        if($products->image)
        {
            $path = 'assets/uploads/products/'.$products->image;
            if(File::exists($path))
            {
                File::delete($path);
            }
        }
        $products->delete();
        return redirect('products')->with('status',"Product Deleted Successfully");
    }
        public function update(Request $request, $id)
        {
            $products = Product::find($id);

            if($request->hasFile('image'))
            {
                $path = 'assets/uploads/products/'.$products->image;
                if(File::exists($path))
                {
                    File::delete($path);
                }
                $file = $request->file('image');
                $ext = $file->getClientOriginalExtension();
                $filename = time().'.'.$ext;
                $file->move('assets/uploads/products/',$filename);
                $products->image = $filename;
            }
            $products->name = $request->input('name');
            $products->slug = $request->input('slug');
            $products->small_description = $request->input('small_description');
            $products->description = $request->input('description');
            $products->original_price = $request->input('original_price');
            $products->selling_price = $request->input('selling_price');
            $products->tax = $request->input('tax');
            $products->qty = $request->input('qty');
            $products->status = $request->input('status') == TRUE ? '1':'0';
            $products->trending = $request->input('trending') == TRUE ? '1':'0';
            $products->meta_title = $request->input('meta_title');
            $products->meta_keywords = $request->input('meta_keywords');
            $products->meta_description = $request->input('meta_description');
            $products->update();
            return redirect('products')->with('status',"Product Updated Successfully");

        }
    }
