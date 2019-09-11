<div class="col-md-8 col-md-offset-2" style="margin-top: 30px; margin-bottom: 100px;">
	<div class="panel panel-primary">
		<div class="panel-heading">Sửa thông người dùng</div>
		<div class="panel-body">

			<?php if(isset($_GET["err"]) && $_GET["err"]=="false"){ ?>
				<div class="alert alert-danger">
					Nhập lại mật khẩu không đúng
				</div>
			<?php } ?>


			<form action="index2.php?controller=student/edit&act=edit&id=<?php echo $value["token"]; ?>" method="post">
				<table class="table">
					<tr>
						<td>Mã sinh viên</td>
						<td>
							<input type="text" name="email" value="<?php echo $value["maSV"] ?>" class="form-control" readonly>
						</td>
					</tr>
					<tr>
						<td width="200px;">Tên sinh viên</td>
						<td>
							<input type="text" name="username" value="<?php echo $value["tenSV"] ?>" class="form-control" readonly>
						</td>
					</tr>
					<tr>
						<td>Điểm</td>
						<td>
							<input type="password" name="password" placeholder="Nếu muốn thay đổi điểm thì nhập vào" class="form-control">
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit" value="Cập nhật thông tin" class="btn btn-primary">
							<a href="index.php?controller=users/list" class="btn btn-success">Quay lại</a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>