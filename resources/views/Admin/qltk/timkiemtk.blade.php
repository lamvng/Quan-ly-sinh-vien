@extends('admin.layout.index')
@section('content')
<div class="timkiemtk-container">
	<p class="title">Tìm kiếm tài khoản </p>
	<div class="div-search">
		<form action="admin\qltk\timkiemtk" method="POST">
			<input type="text" placeholder="Nhập từ khoá" name="">
			<select >
				<option value="MSSV">Mã Số</option>
				<option value="Ten">Họ Tên</option>
				<option value="Lop">Tên TK</option>
			</select>
			<button type="submit">Tìm</button>
		</form>
	</div>
	<table class="result-table">
		<thead>
			<tr>
				<th>Họ và tên</th>
				<th>Mã số</th>
				<th>Tên TK</th>
				<th>Chức vụ</th>
			</tr>
		</thead>
		<tbody class="element">
			<tr>
				<td>Nguyễn An Khang</td>
				<td>20151950</td>
				<td>KSCLC</td>
				<td>K60</td>
			</tr>
		</tbody>
	</table>
</div>
@endsection