<?php ob_start(); ?>
<div class='col-lg-4 col-md-6 col-sm-6 col-12 row ml-1 mt-1 project-card' >
	<div style='height:19em;width:100%;background:url("<?=$project["topImg"]?>");background-size:100%;background-repeat:no-repeat;background-position:center;' 
		class='d-flex justify-content-center align-items-center project-img m-0 p-0 col-12 rounded' style='background:#2c2c2c;'>
		<div class='project-body col-12 d-flex justify-content-center align-items-center' >
			<img src='css/assets/projectCover.png' style='height:19em;'/>
		</div>
	</div>

</div>


<?php $project_text = ob_get_clean(); ?>
