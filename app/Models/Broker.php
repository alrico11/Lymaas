<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Broker extends Model
{
    use HasFactory;
    protected $table = 'broker';

    static $rules = [
        'name' => 'required',
        'address' => 'required',
        'company' => 'required',
        'affiliation' => 'required',
        'phone' => 'required',
    ];

    protected $perPage = 20;

    protected $fillable = [
        'name',
        'address',
        'company',
        'phone',
        'affiliation',
    ];
}
