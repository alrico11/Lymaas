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
        $user = new User();
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->password = bcrypt($request->input('password'));
        $user->type = $request->input('type');
        $user->phone = $request->input('phone');
        $user->address = $request->input('address');
        $user->country = $request->input('country');
        $user->messenger_color = '#2180f3';
        $user->active_status = 1;
        // $user->avatar = 'uploads/avatar/avatar.png'; // menyimpan nilai default untuk kolom avatar
        // if ($request->hasFile('avatar')) { // cek apakah ada file avatar yang diupload
        //     $avatar = $request->file('avatar');
        //     $filename = time() . '.' . $avatar->getClientOriginalExtension();
        //     $path = public_path('uploads/avatar/' . $filename);
        //     Image::make($avatar)->resize(300, 300)->save($path);
        //     $user->avatar = 'uploads/avatar/' . $filename; // menyimpan path file avatar yang diupload
        // }
        $user->country_code = "+62";
        $user->phone_verified_at = null;
        $user->dark_mode = $request->input('dark_mode') ?? 0;
        $user->lang = "en";
        $user->social_type = $request->input('social_type');
        $user->save();
        return response()->json([
            'status' => 'User Created Successfully',
            'data' => $user,
        ]);
    }
    public function show($id)
    {
        $user = User::find($id);
        if (!$user) {
            return response()->json([
                'status' => 'User not found'
            ], 404);
        }

        return response()->json([
            'status' => 'success',
            'data' => $user
        ]);
    }
    public function update(Request $request, $id)
    {
        $user = User::find($id);
        if (!$user) {
            return response()->json([
                'status' => 'User not found'
            ], 404);
        }
        $this->validate($request, [
            // 'name' => 'required',
            // 'email' => 'required|email|unique:users,email,' . $user->id,
            // 'phone' => 'required|unique:users,phone,' . $user->id . '|digits:12',
            // 'type' => 'required',
            // 'password' => 'sometimes|required|same:confirm-password',
        ]);
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->password = bcrypt($request->input('password'));
        $user->phone = $request->input('phone');
        $user->address = $request->input('address');
        $user->country = $request->input('country');
        $user->dark_mode = 0;
        $user->social_type = $request->input('social_type');

        $user->update();
        return response()->json([
            'status' => 'User Updated Successfully',
            'data' => $user
        ]);
    }

    public function destroy($id)
    {
        $user = User::find($id);
        if (!$user) {
            return response()->json([
                'status' => 'User not found'
            ], 404);
        }
        $user->delete();
        return response()->json([
            'status' => 'User Deleted Successfully'
        ]);
    }
    public function getAll()
    {
        $users = User::all();
        return response()->json([
            'status' => 'success',
            'data' => $users
        ]);
    }
}
