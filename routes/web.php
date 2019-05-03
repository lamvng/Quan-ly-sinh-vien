<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::group(['middleware' => 'web'], function () {

	Route::get('dangnhap','TaiKhoanController@getDangNhap');
	Route::post('dangnhap','TaiKhoanController@postDangNhap');

	Route::get('canbo/dangnhap','TaiKhoanController@getDangNhap');
	Route::post('canbo/dangnhap','TaiKhoanController@postDangNhap');

	Route::get('sinhvien/dangnhap','TaiKhoanController@getDangNhap');
	Route::post('sinhvien/dangnhap','TaiKhoanController@postDangNhap');

	Route::get('dangxuat','TaiKhoanController@getDangXuat');

	Route::group(['prefix'=>'admin','middleware'=>'login'], function() {
		Route::get('home', function() {
			return view('admin.home');
		});
		Route::group(['prefix'=>'qltk'], function() {
			Route::get('themtk','TaiKhoanController@getThemTK');
			Route::post('themtk','TaiKhoanController@postThemTK');

			Route::get('timkiemtk','TaiKhoanController@getTimkiemTK');
			Route::post('timkiemtk','TaiKhoanController@postTimkiemTK');

			Route::get('xemtk','TaiKhoanController@getXemTK');

			Route::get('suatk','TaiKhoanController@getSuaTK');
			Route::post('suatk','TaiKhoanController@postSuaTK');

			Route::get('xoatk','TaiKhoanController@getXoaTK');
			Route::post('xoatk','TaiKhoanController@postXoaTK');
		});

		Route::get('qlddk','DangKyController@getQLDDK');
		Route::post('qlddk','DangKyController@postQLDDK');

		Route::group(['prefix'=>'qltkcn'], function() {
			Route::get('xemtk','TaiKhoanController@getXemTKCN');

			Route::get('suatk','TaiKhoanController@getSuaTKCN');
			Route::post('suatk','TaiKhoanController@postSuaTKCN');
		});

	});

	Route::group(['prefix'=>'canbo','middleware'=>'login'], function() {
		Route::get('home', function() {
			return view('canbo.home');
		});
		Route::group(['prefix'=>'qlhssv'], function() {
			Route::get('themhs','HoSoController@getThemHS');
			Route::post('themhs','HoSoController@postThemHS');

			Route::get('timkiemsv','SinhVienController@getTimkiemSV');
			Route::post('timkiemsv','SinhVienController@postTimkiemSV');

			Route::get('xemhs','HoSoController@getXemHS');
			
			Route::get('suahs','HoSoController@getSuaHS');
			Route::post('suahs','HoSoController@postSuaHS');

			Route::get('xoahs','HoSoController@getXoaHS');
			Route::post('xoahs','HoSoController@postXoaHS');
		});

		Route::group(['prefix'=>'qld'], function() {
			Route::group(['prefix'=>'sv'], function() {
				Route::get('timkiemsv','SinhVienController@getTimkiemSV');
				Route::post('timkiemsv','SinhVienController@postTimkiemSV');

				Route::get('xemdiemsv','DiemController@getXemDiemSV');

				Route::get('suadiem','DiemController@getSuaDiem');
				Route::post('suadiem','DiemController@postSuaDiem');

			});
			Route::group(['prefix'=>'lop'], function() {
				Route::get('timkiemlop','LopController@getTimkiemLop');
				Route::post('timkiemlop','LopController@postTimkiemLop');

				Route::get('xemdiemlop','DiemController@getXemDiemLop');

				Route::get('nhapdiem','DiemController@getNhapDiem');
				Route::post('nhapdiem','DiemController@postNhapDiem');

			});
		});

		Route::group(['prefix'=>'qldkl'], function() {
			Route::get('molop','LopController@getMoLop');
			Route::post('molop','LopController@postMoLop');

			Route::get('timkiemlop','LopController@getTimkiemLop');
			Route::post('timkiemlop','LopController@postTimkiemLop');

			Route::get('xemlop','LopController@getXemLop');
			
			Route::get('sualop','LopController@getSuaLop');
			Route::post('sualop','LopController@postSuaLop');

			Route::get('xoalop','LopController@getXoaLop');
			Route::post('xoalop','LopController@postXoaLop');
		});

		Route::group(['prefix'=>'qltkcn'], function() {
			Route::get('xemtk','TaiKhoanController@getXemTKCN');

			Route::get('suatk','TaiKhoanController@getSuaTKCN');
			Route::post('suatk','TaiKhoanController@postSuaTKCN');
		});
	});

	Route::group(['prefix'=>'sinhvien','middleware'=>'login'], function() {

		Route::get('home', function() {
			return view('sinhvien.home');
		});

		Route::group(['prefix'=>'qlhscn'], function() {
			Route::get('xemhscn','HoSoController@getXemHSCN');

			Route::get('suahscn','HoSoController@getSuaHSCN');
			Route::post('suahscn','HoSoController@postSuaHSCN');
		});

		Route::get('xemdiem','DiemController@getXemDiem');

		Route::group(['prefix'=>'qldkl'], function() {

			Route::get('xemlopdk','LopController@getXemLopDK');

			Route::get('timkiemlop','LopController@getTimkiemLop');
			Route::post('timkiemlop','LopController@postTimkiemLop');

			Route::get('xemlop','LopController@getXemLop');

			Route::get('dangkylop','LopController@getDangKyLop');
			Route::post('dangkylop','LopController@postDangKyLop');

			Route::get('huydangky','LopController@getHuyDangKy');
			Route::post('huydangky','LopController@postHuyDangKy');

		});

		Route::group(['prefix'=>'qltkcn'], function() {
			Route::get('xemtk','TaiKhoanController@getXemTKCN');

			Route::get('suatk','TaiKhoanController@getSuaTKCN');
			Route::post('suatk','TaiKhoanController@postSuaTKCN');
		});
	});
});


