@extends('sinhvien.layout.index')
@section('content')
<div class="xemlopdk-container">
	<p class="title">Xem lớp đã đăng ký : </p>
	<table class="result-table">
		<thead>
			<tr>
				<th class="long">Học phần</th>
				<th class="short">Mã lớp</th>
				<th class="short">Mã học phần</th>
				<th class="short">Viện</th>
				<th class="short">Delete</th>
			</tr>
		</thead>
		<tbody class="element">
			<tr>
				<td class="long">Phân tích & thiết kế</td>
				<td class="short">87190</td>
				<td class="short">IT4436</td>
				<td class="short">CNTT</td>
				<td class="short">
					<a class="del-button" href="sinhvien\qldkl\huydangky">Delete</a>
				</td>
			</tr>
		</tbody>
	</table>
</div>
@endsection
