@extends('admin.layout.index')
@section('content')
<div class="xemtk-container">
	<p class="title">Xem tài khoản</p>
	<p class="label">Thông tin tài khoản</p>
	<div class="account-infor">
		<div class="field-block">
			<img src="frontend\image\avatar.png" height="204" class="infor-image">
		</div>
		<div class="field-block-1">
			<div class="text-field">
				<p>Họ và tên :</p>
				<p>Nguyễn An Khang</p>
			</div>
			<div class="text-field">
				<p>Tên TK :</p>
				<p>Đại học</p>
			</div>
		</div>
		<div class="field-block-1">
			<div class="text-field">
				<p>Mã số :</p>
				<p>Nam</p>
			</div>
			<div class="text-field">
				<p>Chức vụ :</p>
				<p>HTTT&TT</p>
			</div>
		</div>
	</div>
	<div class="button">
		<a href="admin\qltk\suatk"> 
			<button type="submit" class="edit-button">Sửa</button>
		</a>
		<form action="admin\qltk\xoatk">
			<button type="submit" class="del-button">Xoá</button>
		</form>
	</div>
	<div style="clear:both"></div>
</div>
@endsection