@extends('canbo.layout.index')
@section('content')
<div class="xemdiemlop-container">
	<p class="title">Bảng điểm lớp: Phân tích & thiết kế hệ thống - 85531 </p>
	<form action="canbo\qld\lop\nhapdiem" method="POST">
		<table class="result-table">
			<thead>
				<tr>
					<th class="short">STT</th>
					<th class="long">Họ tên</th>
					<th class="short">MSSV</th>
					<th class="short">Hệ</th>
					<th class="short">Lớp</th>
					<th class="short">Khoá</th>
					<th class="short">Điểm QT</th>
					<th class="short">Điểm thi</th>
				</tr>
			</thead>
			<tbody class="element">	
				<tr>
					<td class="short">1</td>
					<td class="long">Nguyễn An Khang</td>
					<td class="short">20151950</td>
					<td class="short">KSCLC</td>
					<td class="short">HTTT&TT</td>
					<td class="short">60</td>
					<td class="short"></td>
					<td class="short"></td>
				</tr>
			</tbody>
		</table>
	</form>
</div>
@endsection