<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function create()
{
    return view('users.create');
}

public function store(Request $request)
{
    $this->validate($request, [
        'name' => 'required',
        'email' => 'required|email|unique:users,email',
        'password' => 'required|same:confirm-password',
        'type' => 'required',
        'phone' => 'required|unique:users,phone|digits:12',
    ]);

    $user = User::create([
        'name' => $request->input('name'),
        'email' => $request->input('email'),
        'password' => bcrypt($request->input('password')),
        'type' => $request->input('type'),
        'phone' => $request->input('phone'),
        'address' => $request->input('address'),
        'country' => $request->input('country'),
        'messenger_color' => '#2180f3',
        'active_status' => 1,
        'country_code' => '+62',
        'phone_verified_at' => null,
        'dark_mode' => $request->input('dark_mode', 0),
        'lang' => 'en',
        'social_type' => null,
    ]);

    return response()->json([
        'status' => 'User Created Successfully',
        'data' => $user,
    ]);
}

public function show($id)
{
    $user = User::find($id);

    if (!$user) {
        return response()->json(['status' => 'User not found'], 404);
    }

    return response()->json(['status' => 'success', 'data' => $user]);
}

public function update(Request $request, $id)
{
    $user = User::find($id);

    if (!$user) {
        return response()->json(['status' => 'User not found'], 404);
    }

    $this->validate($request, [
        // 'name' => 'required',
        // 'email' => 'required|email|unique:users,email,' . $user->id,
        // 'phone' => 'required|unique:users,phone,' . $user->id . '|digits:12',
        // 'type' => 'required',
        // 'password' => 'sometimes|required|same:confirm-password',
    ]);

    $user->fill([
        'name' => $request->input('name'),
        'email' => $request->input('email'),
        'password' => bcrypt($request->input('password')),
        'phone' => $request->input('phone'),
        'address' => $request->input('address'),
        'country' => $request->input('country'),
        'dark_mode' => 0,
        'social_type' => $request->input('social_type'),
    ])->save();

    return response()->json([
        'status' => 'User Updated Successfully',
        'data' => $user
    ]);
}

public function destroy($id)
{
    $user = User::find($id);

    if (!$user) {
        return response()->json(['status' => 'User not found'], 404);
    }

    $user->delete();

    return response()->json(['status' => 'User Deleted Successfully']);
}

public function getAll()
{
    $users = User::all();


}
}
