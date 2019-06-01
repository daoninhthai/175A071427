<div class="col-md-8 col-md-offset-2" style="margin-top: 30px; margin-bottom: 100px;">
	<div class="panel panel-primary">
		<div class="panel-heading">Thêm người dùng</div>
		<div class="panel-body">
<?php if(isset($_GET["err"]) && $_GET["err"]=="false"){ ?>
				<div class="alert alert-danger">
					Nhập lại mật khẩu không đúng
				</div>
			<?php } ?>
			
			

			<form action="index2.php?controller=student/add&act=add" method="post">
				<table class="table">
					<tr>
						<td width="200px;">Tên sinh viên</td>
						<td>
							<input type="text" name="tenSV" placeholder="Tên sinh viên" class="form-control" required>
						</td>
					</tr>
					<tr>
						<td>Mã sinh viên</td>
						<td>
							<input type="text" name="maSV" placeholder="Mã sinh viên" class="form-control" required>
						</td>
					</tr>
					<tr>
						<td width="200px;">Phòng học</td>
						<td>
							<input type="text" name="phongHoc" placeholder="Nhập tên phòng học" class="form-control" required>
						</td>
					</tr>
					<tr>
						<td width="200px;">Tên Môn</td>
						<td>
							<input type="text" name="tenMon" placeholder="Nhập tên môn học" class="form-control" required>
						</td>
					</tr>
					
					
					<tr>
						<td></td>
						<td>
							<input type="submit" value="Thêm sinh viên" class="btn btn-primary">
							<a href="index2.php?controller=student/list" class="btn btn-success">Quay lại</a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>