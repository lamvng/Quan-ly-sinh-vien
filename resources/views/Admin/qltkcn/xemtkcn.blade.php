@extends('admin.layout.index')
@section('content')
<div class="xemtkcn-container">
	<p class="title">Xem tài khoản cá nhân</p>
	<p class="label">Thông tin tài khoản</p>
	<div class="user-infor">
		<div class="field-block">
			<img src="Frontend\Image\avatar.png" height="204" class="infor-image">
			<p>MaCB : </p>
			<p> 20151950</p>
		</div>
		<div class="field-block-1">
			<div class="text-field">
				<p>Họ và tên :</p>
				<p>Nguyễn An Khang</p>
			</div>
			<div class="text-field">
				<p>Tên tài khoản :</p>
				<p>khangna.1505</p>
			</div>
			<div class="text-field">
				<p>Chức vụ :</p>
				<p>Cán bộ</p>
			</div>
		</div>
		<div class="field-block-1">
			<div class="text-field">
				<p>Giới tính :</p>
				<p>Nguyễn An Khang</p>
			</div>
			<div class="text-field">
				<p>Email :</p>
				<p>khangna.1505</p>
			</div>
			<div class="text-field">
				<p>SĐT :</p>
				<p>Cán bộ</p>
			</div>
		</div>
	</div>
	<a href="admin\qltkcn\suatkcn">
		<button type="submit" class="edit-button">Sửa</button>
	</a>
</div>
@endsection
