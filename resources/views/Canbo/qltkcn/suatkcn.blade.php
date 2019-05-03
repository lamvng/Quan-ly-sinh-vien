@extends('admin.layout.index')
@section('content')
<div class="suatkcn-container">
	<p class="title">Sửa tài khoản cá nhân</p>
	<p class="label">Thông tin tài khoản</p>
	<form action="canbo\qltkcn\suatkcn" method="POST">
		<div class="user-infor">
			<div class="field-block">
				<img src="frontend\image\avatar.png" height="204" class="infor-image">
				<p>MaCB : </p>
				<p> 20151950</p>
			</div>
			<div class="field-block-1">
				<div class="text-field">
					<p>Họ và tên :</p>
					<input type="text" value="Nguyễn An Khang" name="">
				</div>
				<div class="text-field">
					<p>Mật khẩu cũ :</p>
					<input type="password">
				</div>
				<div class="text-field">
					<p>Mật khẩu mới:</p>
					<input type="password">
				</div>
				<div class="text-field">
					<p>Nhập lại :</p>
					<input type="text" name="">
				</div>
			</div>
			<div class="field-block-1">
				<div class="text-field">
					<p>Giới tính :</p>
					<input type="text" value="Nam" name="">
				</div>
				<div class="text-field">
					<p>Email :</p>
					<input type="password">
				</div>
				<div class="text-field">
					<p>SĐT :</p>
					<input type="text" name="">
				</div>
			</div>
		</div>
		<button type="submit" class="edit-button">Lưu</button>
	</form>
</div>
@endsection

