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
	Route::group(['middleware'=>'logout'], function() {
		Route::get('dangnhap','TaiKhoanController@getDangNhap');
		Route::post('dangnhap','TaiKhoanController@postDangNhap');
	});

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

		Route::get('qlddk','LopController@getQLDDK');
		Route::post('modotdk','LopController@postMoDotDK');
		Route::post('dongdotdk','LopController@postDongDotDK');

		Route::group(['prefix'=>'qltkcn'], function() {
			Route::get('xemtkcn/{username}','TaiKhoanController@getAdminXemTKCN');

			Route::get('suatkcn/{username}','TaiKhoanController@getAdminSuaTKCN');
			Route::post('suatkcn/{username}','TaiKhoanController@postAdminSuaTKCN');
		});

	});

	Route::group(['prefix'=>'canbo','middleware'=>'canboLogin'], function() {
		Route::get('home', function() {
			return view('canbo.home');
		});
		Route::group(['prefix'=>'qlhssv'], function() {
			Route::get('themhs','SinhVienController@getThemHS');
			Route::post('themhs/{username}','SinhVienController@postThemHS');

			Route::get('timkiemsv','SinhVienController@getTimkiemHSSV');
			Route::post('timkiemsv','SinhVienController@postTimkiemHSSV');

			Route::post('timkiemtksv','SinhVienController@postTimkiemTKSV');

			Route::get('xemhs/{maSV}','SinhVienController@getXemHS');
			
			Route::get('suahs/{maSV}','SinhVienController@getSuaHS');
			Route::post('suahs/{maSV}','SinhVienController@postSuaHS');

			Route::get('xoahs/{maSV}','SinhVienController@getXoaHS');
			Route::post('xoahs/{maSV}','SinhVienController@postXoaHS');
		});

		Route::group(['prefix'=>'qld'], function() {
			Route::group(['prefix'=>'sv'], function() {
				Route::get('timkiemsv','SinhVienController@getTimkiemDiemSV');
				Route::post('timkiemsv','SinhVienController@postTimkiemDiemSV');

				Route::get('xemdiemsv/{maSV}','SinhVienController@getXemDiemSV');

				// Route::get('suadiem','SinhVienController@getSuaDiem');
				Route::post('suadiem/{maSV}/qt/{id}','SinhVienController@postSuaDiemQT');
				Route::post('suadiem/{maSV}/ck/{id}','SinhVienController@postSuaDiemCK');

			});
			Route::group(['prefix'=>'lop'], function() {
				Route::get('timkiemlop','LopController@getTimkiemDiemLop');
				Route::post('timkiemlop','LopController@postTimkiemDiemLop');

				Route::get('xemdiemlop/{maLop}','LopController@getXemDiemLop');

				// Route::get('nhapdiem','LopController@getNhapDiem');
				Route::post('nhapdiem/{maLop}','LopController@postNhapDiem');

			});
		});

		Route::group(['prefix'=>'qldkl'], function() {
			Route::get('molop','LopController@getMoLop');
			Route::post('molop','LopController@postMoLop');

			Route::get('timkiemlop','LopController@getTimkiemLop');
			Route::post('timkiemlop','LopController@postTimkiemLop');

			Route::get('xemlop/{maLop}','LopController@getCBXemLop');
			
			Route::get('sualop','LopController@getSuaLop');
			Route::post('sualop','LopController@postSuaLop');

			Route::get('xoalop','LopController@getXoaLop');
			Route::post('xoalop','LopController@postXoaLop');
		});

		Route::group(['prefix'=>'qltkcn'], function() {
			Route::get('xemtkcn/{username}','TaiKhoanController@getCBQLXemTKCN');

			Route::get('suatkcn/{username}','TaiKhoanController@getCBQLSuaTKCN');
			Route::post('suatkcn/{username}','TaiKhoanController@postCBQLSuaTKCN');
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

			Route::get('timkiemlop','LopController@getSVTimkiemLop');
			Route::post('timkiemlop','LopController@postSVTimkiemLop');

			Route::get('xemlop/{maLop}','LopController@getSVXemLop');

			Route::get('dangkylop/{maLop}','LopController@getDangKyLop');
			Route::post('dangkylop/{maLop}','LopController@postDangKyLop');

			Route::post('huydangky/{maLop}','LopController@postHuyDangKy');
			// Route::post('huydangky\{maLop}','LopController@postHuyDangKy');

		});

		Route::group(['prefix'=>'qltkcn'], function() {
			Route::get('xemtkcn/{username}','TaiKhoanController@getSinhVienXemTKCN');

			Route::get('suatkcn/{username}','TaiKhoanController@getSinhVienSuaTKCN');
			Route::post('suatkcn/{username}','TaiKhoanController@postSinhVienSuaTKCN');
		});
	});
});


