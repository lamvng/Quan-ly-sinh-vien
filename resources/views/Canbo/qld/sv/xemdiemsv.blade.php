@extends('canbo.layout.index')
@section('content')
<div class="xemdiemsv-container">
	<p class="title">Bảng điểm sinh viên </p>
	<table class="result-table">
		<thead>
			<tr>
				<th class="short">Học kỳ</th>
				<th class="short">Mã HP</th>
				<th class="long">Tên HP</th>
				<th class="short">TC</th>
				<th class="short">Lớp học</th>
				<th class="short">Điểm QT</th>
				<th class="short">Điểm thi</th>
				<th class="short">Điểm chữ</th>
			</tr>
		</thead>
		<tbody class="element">
			<tr>
				<td class="short">20151</td>
				<td class="short">EV1014</td>
				<td class="long">Phân tích & thiết kế hệ thống</td>
				<td class="short">2</td>
				<td class="short">85531</td>
				<td class="short" id="cell-edit-1" >
				<p id="before-edit-1" >6.5</p>
				<form action="canbo\qld\sv\suadiem" method="POST">
					<input type="text" id="edit-1" name="" >	
					<button type="submit" id="button-1">Lưu</button>
				</form>
				</td>
				<td class="short" id="cell-edit-2" >
				<p id="before-edit-2" >8</p>
				<form action="canbo\qld\sv\suadiem" method="POST">
					<input type="text" id="edit-2" name="" >
					<button type="submit" id="button-2">Lưu</button>	
				</form>
				</td>
				<td class="short">B</td>
			</tr>
		</tbody>
	</table>
</div>

<script type="text/javascript">
	var id1=document.getElementById("cell-edit-1");
	id1.addEventListener('click', function(){
		document.getElementById("before-edit-1").style.display = "none";
		document.getElementById("edit-1").style.display="block";
		document.getElementById("edit-1").focus();
		document.getElementById("button-1").style.display="block"
	});
	document.getElementById("button-1").addEventListener('click', function() {
		document.getElementById("edit-1").style.display="none";
		document.getElementById("before-edit-1").style.display = "block";
		document.getElementById("button-1").style.display="none";
	});
	var id2=document.getElementById("cell-edit-2");
	id2.addEventListener('click', function(){
		document.getElementById("before-edit-2").style.display = "none";
		document.getElementById("edit-2").style.display="block";
		document.getElementById("edit-2").focus();
		document.getElementById("button-2").style.display="block"
	});
	document.getElementById("button-1").addEventListener('click', function() {
		document.getElementById("edit-2").style.display="none";
		document.getElementById("before-edit-2").style.display = "block";
		document.getElementById("button-2").style.display="none"
	});
</script>
@endsection