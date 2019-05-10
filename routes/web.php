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

	Route::get('dangxuat','TaiKhoanController@getDangXuat');

	Route::group(['prefix'=>'admin','middleware'=>'adminLogin'], function() {
		Route::get('home', function() {
			return view('admin.home');
		});
		Route::group(['prefix'=>'qltk'], function() {
			Route::get('themtk','TaiKhoanController@getThemTK');
			Route::post('themtk','TaiKhoanController@postThemTK');

			Route::get('timkiemtk','TaiKhoanController@getTimkiemTK');
			Route::post('timkiemtk','TaiKhoanController@postTimkiemTK');

			Route::get('xemtk/{username}','TaiKhoanController@getXemTK');

			Route::get('suatk/{username}','TaiKhoanController@getSuaTK');
			Route::post('suatk/{username}','TaiKhoanController@postSuaTK');

			Route::get('xoatk/{username}','TaiKhoanController@getXoaTK');
			
		});

		Route::get('qlddk','DangKyController@getQLDDK');
		Route::post('qlddk','DangKyController@postQLDDK');

		Route::group(['prefix'=>'qltkcn'], function() {
			Route::get('xemtkcn/{username}','TaiKhoanController@getXemTKCN');

			Route::get('suatkcn/{username}','TaiKhoanController@getSuaTKCN');
			Route::post('suatkcn/{username}','TaiKhoanController@postSuaTKCN');
		});

	});

	Route::group(['prefix'=>'canbo','middleware'=>'canboLogin'], function() {
		Route::get('home', function() {
			return view('canbo.home');
		});
		Route::group(['prefix'=>'qlhssv'], function() {
			Route::get('themhs','SinhVienController@getThemHS');
			Route::post('themhs','SinhVienController@postThemHS');

			Route::get('timkiemsv','SinhVienController@getTimkiemSV');
			Route::post('timkiemsv','SinhVienController@postTimkiemSV');

			Route::get('xemhs','SinhVienController@getXemHS');
			
			Route::get('suahs','SinhVienController@getSuaHS');
			Route::post('suahs','SinhVienController@postSuaHS');

			Route::get('xoahs','SinhVienController@getXoaHS');
			Route::post('xoahs','SinhVienController@postXoaHS');
		});

		Route::group(['prefix'=>'qld'], function() {
			Route::group(['prefix'=>'sv'], function() {
				Route::get('timkiemsv','SinhVienController@getTimkiemSV');
				Route::post('timkiemsv','SinhVienController@postTimkiemSV');

				Route::get('xemdiemsv','SinhVienController@getXemDiemSV');

				Route::get('suadiem','SinhVienController@getSuaDiem');
				Route::post('suadiem','SinhVienController@postSuaDiem');

			});
			Route::group(['prefix'=>'lop'], function() {
				Route::get('timkiemlop','LopController@getTimkiemLop');
				Route::post('timkiemlop','LopController@postTimkiemLop');

				Route::get('xemdiemlop','LopController@getXemDiemLop');

				Route::get('nhapdiem','LopController@getNhapDiem');
				Route::post('nhapdiem','LopController@postNhapDiem');

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

	Route::group(['prefix'=>'sinhvien','middleware'=>'sinhvienLogin'], function() {

		Route::get('home', function() {
			return view('sinhvien.home');
		});

		Route::group(['prefix'=>'qlhscn'], function() {
			Route::get('xemhscn','SinhVienController@getXemHSCN');

			Route::get('suahscn','SinhVienController@getSuaHSCN');
			Route::post('suahscn','SinhVienController@postSuaHSCN');
		});

		Route::get('xemdiem','SinhVienController@getXemDiem');

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


