<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ThongTinCaNhan extends Model
{
    protected $table = 'thongtinhoctap';
    public $timestamps = false;

    public function sinhvien() {
    	return $this->belongsTo('App\SinhVien','maSV','maSV');
    }
}
