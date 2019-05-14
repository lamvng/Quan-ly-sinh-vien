<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\LopHoc;
use App\BangDiem;

class LopController extends Controller
{
    public function getTimKiemLop() {
        return view('canbo.qld.lop.timkiemlop');
    }
    public function postTimKiemLop(Request $request) {
        $tukhoa = $request->tukhoa;
        $tieuchi = $request->tieuchi;
        $lophoc = lopHoc::where($tieuchi,'=',$tukhoa)->get();

        return view('canbo.qld.lop.timkiemlop',['lophoc'=>$lophoc]);

    }

    public function getXemDiemLop($maLop) {
    	$bangdiem = BangDiem::where('maLop','=',$maLop)->get();
        $lophoc = LopHoc::find($maLop);
        return view('canbo.qld.lop.xemdiemlop',['lophoc'=>$lophoc,'bangdiem'=>$bangdiem]);
    }

    public function postNhapDiem($maLop) {
    	
    }

}
