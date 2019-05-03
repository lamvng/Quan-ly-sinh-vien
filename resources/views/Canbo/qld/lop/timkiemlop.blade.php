@extends('canbo.layout.index')
@section('content')
<div class="timkiemlop-container">
	<p class="title">Tìm kiếm lớp </p>
	<div class="div-search">
		<form action="canbo\qld\lop\timkiemlop" method="POST">
			<input type="text" placeholder="Nhập từ khoá" name="">
			<select >
				<option value="Mã lớp">Mã lớp</option>
				<option value="Học phần">Học phần</option>
				<option value="Mã học phần">MãHP</option>
			</select>
			<button type="submit">Tìm</button>
		</form>
	</div>
	<table class="result-table">
		<thead>
			<tr>
				<th class="long">Học phần</th>
				<th class="short">Mã lớp</th>
				<th class="short">Mã học phần</th>
				<th class="short">Viện</th>
			</tr>
		</thead>
		<tbody class="element">
			<tr>
				<td class="long">Phân tích & thiết kế</td>
				<td class="short">87190</td>
				<td class="short">IT4436</td>
				<td class="short">CNTT</td>
			</tr>
		</tbody>
	</table>
</div>
@endsection
