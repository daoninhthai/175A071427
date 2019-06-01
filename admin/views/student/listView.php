<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            Danh sách sinh viên
        </h1>
    </div>
</div>

<a href="index2.php?controller=student/add" class="btn btn-primary" style="margin-bottom: 10px;">Thêm sinh viên</a>

<table class="table table-bordered table-hover">
	<tr>
		<td width="50px;">STT</td>
		
		<td width="200px;">Tên</td>
		<td>MSV</td>
		<td>Phòng Học</td>
		<td>Tên Môn</td>

		<td width="100px;">More</td>
	</tr>

	<?php
		$stt=0;
		foreach ($data as $value) {
			$stt++;
	?>
	<tr>
		<td style="text-align: center;"><?php echo $stt; ?></td>
		
		<td><?php echo $value["tenSV"]; ?></td>

		<td><?php echo $value["maSV"] ?></td>
		<td><?php echo $value["phongHoc"] ?></td>
		<td><?php echo $value["tenMon"] ?></td>


		<td>
			
			<a onclick="window.confirm('Bạn có muốn xóa???');" href="index2.php?controller=student/list&id=<?php echo $value["token"]; ?>&act=delete">Delete</a>
		</td>
	</tr>
	<?php } ?>
</table>

<ul class="paginate">
	<?php for($i=1; $i<=$page_show; $i++){ ?>
		<li><a href="index2.php?controller=student/list&p=<?php echo $i ?>"><?php echo $i; ?></a></li>
	<?php } ?>
</ul>