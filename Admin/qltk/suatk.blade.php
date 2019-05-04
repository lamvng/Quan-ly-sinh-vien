@extends('admin.layout.index')
@section('content')
<div class="suatk-container">
	<p class="title">Sửa tài khoản</p>
	<p class="label">Thông tin sinh viên</p>
	@if(count($errors) > 0)
		<div class="alert-danger">
			@foreach($errors->all() as $err)
				{{$err}} <br>
			@endforeach
		</div>
	@endif

	@if(session('thongbao'))
		<div class="alert-success">
			{{session('thongbao')}}
		</div>
	@endif
	<form action="admin/qltk/suatk/{{$user->username}}" method="POST">
		<input type="hidden" name="_token" value ="{{csrf_token()}}">
		<div class="account-infor">
			<div class="field-block">
				<img src="frontend\image\avatar.png" height="204" class="infor-image">
			</div>
			<div class="field-block-1">
				<div class="text-field">
					<p>Họ và tên :</p>
					<input type="text" value ="{{$user->hoTen}}" name="hoTen">
				</div>
				<div class="text-field">
					<p>Tên tài khoản :</p>
					<input type="text" value="{{$user->username}}" name="username" readonly="readonly">
				</div>
				<div class="text-field">
					<p>Email :</p>
					<input type="text" value="{{$user->email}}" name="email">
				</div>
				<div class="text-field">
					<p>SĐT :</p>
					<input type="text" value="{{$user->sdt}}" name="sdt">
				</div>
			</div>
			<div class="field-block-1">
				<div class="text-field">
					<p>Giới tính :</p>
					<input type="text" value="{{$user->gioiTinh}}" name="gioiTinh">
				</div>
				<div class="text-field">
					<p>Chức vụ :</p>
					<input type="text" value="{{$user->chucVu}}" name="chucVu">
				</div>
				<div class="text-field">
					<p>Mật khẩu mới:</p>
					<input type="password" value="" name="password">
				</div>
				<div class="text-field">
					<p>Nhập lại MK :</p>
					<input type="password" value="" name="passwordagain">
				</div>
			</div>
		</div>
		<button type="submit" class="edit-button">Lưu</button>
	</form>
</div>
@endsection