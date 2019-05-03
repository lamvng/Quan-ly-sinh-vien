@extends('admin.layout.index')
@section('content')
<div class="suatk-container">
	<p class="title">Sửa tài khoản</p>
	<p class="label">Thông tin sinh viên</p>
	<form action="" method="">
		<div class="account-infor">
			<div class="field-block">
				<img src="frontend\image\avatar.png" height="204" class="infor-image">
			</div>
			<div class="field-block-1">
				<div class="text-field">
					<p>Họ và tên :</p>
					<input type="text" value ="Nguyễn An Khang" name="">
				</div>
				<div class="text-field">
					<p>Tên tài khoản :</p>
					<input type="text" value="khang.na151950" name="">
				</div>
				<div class="text-field">
					<p>Chức vụ :</p>
					<input type="text" value="Sinh viên" name="">
				</div>
			</div>
			<div class="field-block-1">
				<div class="text-field">
					<p>Mã số :</p>
					<input type="text" value="20151950" name="">
				</div>
				<div class="text-field">
					<p>Mật khẩu :</p>
					<input type="password" value="12345678" name="">
				</div>
				<div class="text-field">
					<p>Nhập lại MK :</p>
					<input type="password" value="12345678" name="">
				</div>
			</div>
		</div>
		<button type="submit" class="edit-button">Lưu</button>
	</form>
</div>
@endsection