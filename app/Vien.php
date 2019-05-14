<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vien extends Model
{
    protected $table = 'vien';
    public $timestamps = false;

    public function hocphan() {
    	return $this->hasMany('App\HocPhan','maVien','maHocPhan');
    }
}
