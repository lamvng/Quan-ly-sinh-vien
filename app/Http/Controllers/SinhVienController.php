<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SinhVien;
use App\BangDiem;
use App\TaiKhoan;

class SinhVienController extends Controller
{
    public function getTimKiemSV() {
        return view('canbo.qld.sv.timkiemsv');
    }
    public function postTimKiemSV(Request $request) {
        $tukhoa = $request->tukhoa;
        $tieuchi = $request->tieuchi;
        $sinhvien = SinhVien::where($tieuchi,'=',$tukhoa)->get();
        // switch ($tieuchi) {
        //     case 'maSV':
                
        //         break;
        //     case 'hoTen':
        //         $sinhvien = TaiKhoan::where(['chucVu'=>'Sinh viên','hoTen'=>$tukhoa])->get();
        //         break;
        //     case 'maLop':
        //         $sinhvien = SinhVien::where('maLop','=',$tukhoa)->get();
        //         break;
        // }
            
        return view('canbo.qld.sv.timkiemsv',['sinhvien'=>$sinhvien]);

    }

    public function getXemDiemSV($maSV) {
        $bangdiem = BangDiem::where('maSV','=',$maSV)->get();
        $sv = SinhVien::find($maSV);
        return view('canbo.qld.sv.xemdiemsv',['sv'=>$sv,'bangdiem'=>$bangdiem]);
    }


    public function postSuaDiemQT(Request $request, $maSV, $id) {
        $this->validate($request,
            [
                'diemQT'=>'required|numeric'
            ],
            [
                'diemQT.required'=>'Bạn chưa nhập điểm',
                'diemQT.numeric'=>'Điểm phải là số'
            ]);
        $diem = BangDiem::find($id);
        $diem->diemQT = $request->diemQT;
        $diem->diemChu = $diem->diemchu($diem->diemQT,$diem->diemCK,$diem->lophoc->hocphan->trongSo);
        $diem->save();

        return redirect('canbo/qld/sv/xemdiemsv/'.$maSV);
    }
    public function postSuaDiemCK(Request $request, $maSV, $id) {
        $this->validate($request,
            [
                'diemCK'=>'required|numeric'
            ],
            [
                'diemCK.required'=>'Bạn chưa nhập điểm',
                'diemCK.numeric'=>'Điểm phải là số'
            ]);
        $diem = BangDiem::find($id);
        $diem->diemCK = $request->diemCK;
        $diem->diemChu = $diem->diemchu($diem->diemQT,$diem->diemCK,$diem->lophoc->hocphan->trongSo);
        $diem->save();

        return redirect('canbo/qld/sv/xemdiemsv/'.$maSV);
    }
}
