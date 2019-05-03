@extends('sinhvien.layout.index')
@section('content')
<div class="xemlop-container">
	<p class="title">Xem thông tin lớp</p>
	<p class="label">Thông tin lớp học</p>
	<div class="infor">
		<div class="field-block">
			<div class="text-field">
				<p>Học phần :</p>
				<p class="detail">Phân tích thiết kế</p>
			</div>
			<div class="text-field">
				<p>Mã HP :</p>
				<p class="detail">IT4416</p>
			</div>
			<div class="text-field">
				<p>Chương trình :</p>
				<p class="detail">KSCLC</p>
			</div>
			<div class="text-field">
				<p>Viện :</p>
				<p class="detail">CNTT</p>
			</div>
			<div class="text-field">
				<p>Số lượng :</p>
				<p class="detail">15/19</p>
			</div>
		</div>
		<div class="field-block">
			<div class="text-field">
				<p>Mã lớp :</p>
				<p class="detail">10000</p>
			</div>
			<div class="text-field">
				<p>Thời lượng :</p>
				<p class="detail">15 tuần</p>
			</div>
			<div class="text-field">
				<p>Thời gian :</p>
				<p class="detail">12h30-16h00</p>
			</div>
			<div class="text-field">
				<p>Thứ	 :</p>
				<p class="detail">5</p>
			</div>
			<div class="text-field">
				<p>Phòng học :</p>
				<p class="detail">D6-205</p>
			</div>
		</div>
	</div>
	<div class="button">
		<a href="sinhvien\qldkl\danglylop">
			<button type="submit" class="regis-button">Đăng ký</button>
		</a>
	</div>
</div>
@endsection