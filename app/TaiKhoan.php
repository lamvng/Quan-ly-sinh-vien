<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class TaiKhoan extends Authenticatable
{
    use Notifiable;
    protected $table = 'taikhoan';
    protected $primaryKey = 'username';
    public $timestamps = false;

    protected $fillable = [
         'hoTen', 'username', 'password'
    ];
}
