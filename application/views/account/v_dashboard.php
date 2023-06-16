<html>
	<head>
		<title>Home</title>
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css">
	</head>
	<body>
<br>
<br>
	<div class="container">
		<div clss="card shadow">
			<div class="card-header">
				Home Page
			</div>
			<div class="card-body">
				<!-- <center
        ><h1>Selamat Datang <br><?php echo $this->session->userdata('nama'); ?></h1></center> -->
				<table border="0">
				<tbody>
					<tr><td>Nama </td><td>&nbsp&nbsp&nbsp:</td><td>&nbsp<?php echo $this->session->userdata('nama'); ?></td></tr>
					<tr><td>Username </td><td>&nbsp&nbsp&nbsp:</td><td>&nbsp<?php echo $this->session->userdata('username'); ?></td></tr>
          <tr><td>Email </td><td>&nbsp&nbsp&nbsp: </td><td>&nbsp<?php echo $this->session->userdata('email'); ?></td></tr>
					<?php
					foreach($gambar as $data){
						echo "<tr><td>Gambar</td><td>&nbsp&nbsp&nbsp: </td><td>&nbsp<img src='".base_url("images/".$data->nama_file)."' width='100' height='100'></td></tr>";					
					}
				?>
					</tbody>
					</table>
          <br>
				<a href="<?php echo base_url(); ?>login/logout" class="btn btn-primary btn-lg btn-block">Logout</a>
			</div>
		</div>
	</div>		
	</body>
</html>
