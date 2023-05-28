<?php

namespace App\Http\Controllers\La;

use App\Models\Company;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $company = Company::paginate();

        return response()->json(
            [
                'success' => true,
                'data' => $company,
            ],
            200
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $company = new Company();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), Company::$rules);
        if ($validator->fails()) {
            return response()->json(
                [
                    'success' => false,
                    'data' => $validator->errors(),
                ],
                400
            );

            $company = Company::create($request->all());
            return response()->json(
                [
                    'success' => true,
                    'message' => 'Company successfully created.',
                ],
                200
            );
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $company = Company::find($id);
        return response()->json(
            [
                'success' => true,
                'data' => $company,
            ],
            200
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $company = Company::find($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), Company::$rules);

        if ($validator->fails()) {
            return response()->json(
                [
                    'success' => false,
                    'data' => $validator->errors(),
                ],
                400
            );
        }

        $company = Company::find($id);
        if (!empty($company)) {
            $company->update($request->all());

            return response()->json(
                [
                    'success' => true,
                    'message' => 'Company successfully updated.',
                ],
                200
            );
        } else {
            return response()->json(
                [
                    'success' => false,
                    'message' => 'Company not found',
                ],
                404
            );
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $company = Company::find($id)->delete();

        if ($company) {
            return response()->json(
                [
                    'success' => true,
                    'message' => 'Company successfully deleted.',
                ],
                200
            );
        }
    }
}
