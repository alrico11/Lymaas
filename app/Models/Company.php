<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    protected $table = 'company';

    static $rules = [
        'name' => 'required',
        'address' => 'required',
        'contact' => 'required',
        'person_incharge' => 'required',
        'email' => 'required',
        'phone' => 'required',
        'website' => 'required',
        'claim_no' => 'required',
        'reg_date' => 'required',
        'insurer_name' => 'required',
        'instruction_date' => 'required',
        'policy_no' => 'required',
        'type_of_policy' => 'required',
        'certificate_no' => 'required',
        'insurence_reff_no' => 'required',
        'insured_name' => 'required',
        'insured_add' => 'required',
        'broker_id' => 'required',
        'risk_location' => 'required',
        'date_of_loss' => 'required',
        'nature_of_loss' => 'required',
        'cause' => 'required',
        'users_id' => 'required',
        'co_adjuster' => 'required',
        'percentage_co_adjuster' => 'required',
        'total_sum_insured' => 'required',
        'insurance_date' => 'required',
        'broker_data' => 'required',
    ];

    protected $perPage = 20;

    protected $fillable = [
        'name',
        'address',
        'contact',
        'person_incharge',
        'email',
        'phone',
        'website',
        'claim_no',
        'reg_date',
        'insurer_name',
        'instruction_date',
        'policy_no',
        'type_of_policy',
        'certificate_no',
        'insurence_reff_no',
        'insured_name',
        'insured_add',
        'broker_id',
        'risk_location',
        'date_of_loss',
        'nature_of_loss',
        'cause',
        'users_id',
        'co_adjuster',
        'percentage_co_adjuster',
        'total_sum_insured',
        'insurance_date',
        'broker_data',
    ];
}
