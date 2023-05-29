<?php

namespace App\Http\Controllers\La;

use App\Models\Vendor;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Validation\ValidationException;

class VendorController extends Controller
{
    public function index()
    {
        $vendor = Vendor::paginate();

        return response()->json(
            [
                'success' => true,
                'data' => $vendor,
            ],
            200
        );
    }

    public function create()
    {
        $vendor = new Vendor();
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), Vendor::$rules);
        if ($validator->fails()){
            return response()->json(
                [
                    'success' => false,
                    'data' => $validator->errors(),
                ], 400
            );
        }

        $vendor = Vendor::create($request->all());
        return response()->json([
            'success' => true,
            'message' => 'Vendor added successfully.',
        ], 200);
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), Vendor::$rules);
        
        if ($validator->fails()){
            return response()->json(
                [
                    'success' => false,
                    'data' => $validator->errors(),
                ], 400
            );
        }

        $vendor = Vendor::find($id);
        if(!empty($vendor)) {
            $vendor->update($request->all());

            return response()->json(
                [
                    'success' => true,
                    'message' => 'Vendor successfully updated.',
                ],
                200
            );
        } else {
            return response()->json(
                [
                    'success' => false,
                    'message' => 'Vendor not found',
                ],
                404
            );
        }
    }

    public function show ($id)
    {
            $data = Vendor::find($id);
            return response()->json([
                'status' => true,
                'data' => $data
            ], 200);
    }

    public function edit($id)
    {
        $vendor = Vendor::find($id);
    }

    public function destroy (Request $request, $id)
    {
        $vendor = Vendor::find($id)->delete();
        if($vendor) {
            return response()->json([
                'success' => true,
                'message' => 'Delete vendor successfully.'
            ], 200);
        }
    }
    public function getAll()
    {
        $users = Vendor::all();
    }

}