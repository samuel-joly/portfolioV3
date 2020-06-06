<?php ob_start(); ?>
<div class='col-lg-4 col-md-6 col-sm-6 col-12 row ml-1 mt-1 project-card' >
	<div style='height:19em;width:100%;background:url("<?=$project["topImg"]?>");background-size:100%;background-repeat:no-repeat;background-position:center;' 
		class='d-flex justify-content-center align-items-center project-img m-0 p-0 col-12 rounded' style='background:#2c2c2c;'>
		<div class='project-body col-12 d-flex justify-content-center align-items-center' id='<?=$project["id"]?>'>
			<img src='css/assets/projectCover.png' style='height:19em;' id='<?=$project["id"]?>' class='projectTopImg'/>
		</div>
	</div>

</div>

<div class='modal fade' role='dialog' aria-hidden='true' id='toast<?=$project["id"]?>' aria-labelledby='titletoast<?=$project["id"]?>' style='min-width:100vw;'>
	<div class="modal-dialog modal-dialog-centered modal-xl" role="document">
		<div class='modal-content'>
			<div class='modal-header p-2'>
				<h5 class='modal-title m-0 p-0' id='titletoast<?=$project["id"]?>'><?=$project["title"]?></h5>
				<button type="button" class="ml-2 mb-1 close" aria-label="close" data-dismiss='modal'>
				      <span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<div class='container-fluid'>
					<div class='row d-flex justify-content-center align-items-center'>

						<div class='col-8 carousel slide' id='carouselProject' data-ride='carousel'>
							<ol class="carousel-indicators">
								<?php
								$count = 0;
								$imgs = [];
								
								foreach(scandir("css/assets/projects/projects-slider/".$project["id"]."/") as $img) { 
									if($count == 0) {
								?>
										<li data-target="#carouselProject" data-slide-to="<?=$count?>" class="active"></li> <?php
									} else { ?>
										<li data-target="#carouselProject" data-slide-to="<?=$count?>"></li> <?php
									}
									if(!is_dir($img)) {
										$imgs[] .= $img;
									}
									$count++;
								}

								var_dump($imgs);

								?>
							</ol>
						</div>

						<div class='col-4'>
							<?=$project["description"]?>
						</div>

					</div>
				</div>
			</div>
			<div class='modal-footer'>
				...
			</div>
		</div>
	</div>
</div>

<?php $project_text = ob_get_clean(); ?>
