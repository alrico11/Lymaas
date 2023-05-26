<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('company', function (Blueprint $table) {
            $table->id()->nullable(false);
            $table->string('name', 255)->nullable(false);
            $table->string('address', 255)->nullable(false);
            $table->string('contact', 255)->nullable(false);
            $table->string('person_incharge', 255)->nullable(false);
            $table
                ->string('email', 255)
                ->nullable(false)
                ->unique();
            $table
                ->string('phone', 255)
                ->nullable(false)
                ->unique();
            $table->string('website', 255)->nullable(false);
            $table->string('claim_no', 255)->nullable(false);
            $table->date('reg_date')->nullable(false);
            $table->string('insurer_name', 255)->nullable(false);
            $table->date('instruction_date')->nullable(false);
            $table->string('policy_no', 255)->nullable(false);
            $table->string('type_of_policy', 255)->nullable(false);
            $table->string('certificate_no', 255)->nullable(false);
            $table->string('insurence_reff_no', 255)->nullable(false);
            $table->string('insured_name', 255)->nullable(false);
            $table->string('insured_add', 255)->nullable(false);
            $table->integer('broker_id')->nullable(false);
            $table->string('risk_location', 255)->nullable(false);
            $table->date('date_of_loss')->nullable(false);
            $table->string('nature_of_loss', 255)->nullable(false);
            $table->string('cause', 255)->nullable(false);
            $table
                ->integer('users_id')
                ->nullable(false)
                ->comment('ambil spesifik role adjuster: adjuster name');
            $table->string('co_adjuster', 255)->nullable(false);
            $table->string('percentage_co_adjuster', 255)->nullable(false);
            $table->string('total_sum_insured', 255)->nullable(false);
            $table->date('insurance_date')->nullable(false);
            $table->string('broker_data', 255)->nullable(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('company');
    }
};
