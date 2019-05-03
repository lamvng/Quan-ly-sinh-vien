@extends('canbo.layout.index')
@section('content')
<div class="molop-container">
	<p class="title">Thêm lớp mới</p>
	<p class="label">Thông tin lớp học</p>
	<form action="canbo\qldkl\molop" method="POST">
		<div class="infor">
			<div class="field-block">
				<div class="text-field">
					<p>Học phần :</p>
					<input type="text" name="">
				</div>
				<div class="text-field">
					<p>Chương trình :</p>
					<input type="text" name="">
				</div>
				<div class="text-field">
					<p>Viện :</p>
					<input type="text" name="">
				</div>
				<div class="text-field">
					<p>Số lượng :</p>
					<input type="text" name="">
				</div>
			</div>
			<div class="field-block">
				<div class="text-field">
					<p>Thời lượng :</p>
					<input type="text" name="">
				</div>
				<div class="text-field">
					<p>Thời gian :</p>
					<input type="text" name="">
				</div>
				<div class="text-field">
					<p>Thứ	 :</p>
					<input type="text" name="">
				</div>
				<div class="text-field">
					<p>Phòng học :</p>
					<input type="text" name="">
				</div>
			</div>
		</div>
		<button type="submit" class="add-button">Thêm</button>
	</form>
</div>
@endsection