<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->string('email', 255)->unique();
            $table->string('type', 255);
            $table->timestamp('email_verified_at')->default(now());
            $table->string('password', 255);
            $table->rememberToken();
            $table->string('avatar', 255)->default('uploads/avatar/avatar.png');
            $table->string('address', 255)->default('Indonesia');
            $table->string('country', 255)->default('Indonesia');
            $table->string('messenger_color', 255)->default('#2180f3');
            $table->tinyInteger('active_status')->default(1);
            $table->string('country_code')->nullable();
            $table->timestamp('phone_verified_at')->nullable();
            $table->string('phone')->nullable();
            $table->tinyInteger('dark_mode')->default(0);
            $table->string('lang')->default('en');
            $table->string('social_type', 255);
            $table->text('api_token')->nullable();
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
        Schema::dropIfExists('users');
    }
}
