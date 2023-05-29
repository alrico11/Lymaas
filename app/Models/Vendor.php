<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vendor extends Model
{
    public $timestamps = false;
    protected $table = 'vendor';
    protected $fillable = [
        'id',
        'name',
        'address',
        'phone',
        'email',
        'pic',
        'website'
    ];

    static $rules = [
        'name' => 'required|string',
        'address' => 'required|string',
        'phone' => 'required|string|digits:12',
        'email' => 'required|string|email:rfc,dns',
        'pic' => 'required|string',
        'website' => 'required|string|url'
    ];

    protected $perPage = 20;
}