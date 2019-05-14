<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SinhVien extends Model
{
    protected $table = 'sinhvien';
    protected $primaryKey = 'maSV';
    public $incrementing = false;
    public $timestamps = false;
    
    public function diem() {
    	return $this->hasMany('App\BangDiem','maSV','id');
    }

    public function taikhoan() {
    	return $this->hasOne('App\TaiKhoan','username','username');
    }

    public function lopsv() {
    	return $this->belongsTo('App\LopSV','maLop','maLop');
    }

    public function lophoc() {
    	return $this->belongsToMany('App\LopHoc','maLop','maLop');
    }

    public function ttcanhan() {
        return $this->hasOne('App\ThongTinCaNhan','maSV','maSV');
    }

    public function tthoctap() {
        return $this->hasOne('App\ThongTinHocTap','maSV','maSV');
    }

}
