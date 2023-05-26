<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Auth\Events\PasswordReset;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'type',
        'social_type',
        'password',
        'address',
        'country',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = ['password', 'remember_token'];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function loginSecurity()
    {
        return $this->hasOne('App\Models\LoginSecurity');
    }

    public function currentLanguage()
    {
        return $this->lang;
    }

    public function sendPasswordResetNotification($token)
    {
        if (MailTemplate::where('mailable', PasswordReset::class)->first()) {
            $url = URL::temporarySignedRoute(
                'password.reset',
                Carbon::now()->addMinutes(
                    Config::get('auth.verification.expire', 60)
                ),
                [
                    'token' => $token,
                ]
            );
            try {
                Mail::to($this->email)->send(new PasswordReset($this, $url));
            } catch (\Exception $e) {
                //$e->getMessage()
            }
        }
    }

    public function getAvatarImageAttribute()
    {
        $avatar = Storage::exists($this->avatar)
            ? Storage::url($this->avatar)
            : Storage::url('uploads/avatar/avatar.png');
        // $avatar = $this->avatar ? Storage::url($this->avatar) : asset('vendor/avatar_image/avatar.png');
        return $avatar;
    }

    public function hasVerifiedPhone()
    {
        return !is_null($this->phone_verified_at);
    }

    public function lastCodeRemainingSeconds()
    {
        $temp = UserCode::where('user_id', '=', $this->id)->first();
        if (isset($temp)) {
            $seconds = $temp->updated_at->diffInSeconds(Carbon::now());
            // $seconds = 60;
            if ($seconds > 60) {
                return 60;
            } else {
                return 60 - $seconds;
            }
        } else {
            return 60;
        }
    }
}
