<?php

namespace App\Http\Controllers\La;

use App\Models\Broker;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class BrokerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $broker = Broker::paginate();

        return response()->json(
            [
                'success' => true,
                'data' => $broker,
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
        $broker = new Broker();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), Broker::$rules);

        if ($validator->fails()) {
            return response()->json(
                [
                    'success' => false,
                    'data' => $validator->errors(),
                ],
                400
            );
        }

        $broker = Broker::create($request->all());
        return response()->json(
            [
                'success' => true,
                'message' => 'Broker successfully created.',
            ],
            200
        );
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Broker  $broker
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $broker = Broker::find($id);
        return response()->json(
            [
                'success' => true,
                'data' => $broker,
            ],
            200
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Broker  $broker
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $broker = Broker::find($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Broker  $broker
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), Broker::$rules);

        if ($validator->fails()) {
            return response()->json(
                [
                    'success' => false,
                    'data' => $validator->errors(),
                ],
                400
            );
        }

        $broker = Broker::find($id);
        if (!empty($broker)) {
            $company->update($request->all());

            return response()->json(
                [
                    'success' => true,
                    'message' => 'Broker successfully updated.',
                ],
                200
            );
        } else {
            return response()->json(
                [
                    'success' => false,
                    'message' => 'Broker not found',
                ],
                404
            );
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Broker  $broker
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $broker = Broker::find($id)->delete();

        if ($broker) {
            return response()->json(
                [
                    'success' => true,
                    'message' => 'Broker successfully deleted.',
                ],
                200
            );
        }
    }
}
