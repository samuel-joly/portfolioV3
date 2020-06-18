<?php ob_start(); ?>
<div class='col-lg-4 col-md-5 col-sm-5 col-10  row ml-1 m-lg-0 m-md-1 project-card ' style='height:fit-content;'>
	<div style='height:fit-content;width:100%;background:url("<?=$project["topImg"]?>");background-size:100%;background-repeat:no-repeat;background-position:center;' 
		class='rounded d-flex justify-content-center align-items-center project-img m-0 p-0 col-12 rounded' style='background:#2c2c2c;'>
		<div class='project-body col-12 d-flex justify-content-center align-items-center' id='<?=$project["id"]?>' style='height:fit-content;'>
			<img src='../css/assets/projectCover.png' style='width:100%;'id='<?=$project["id"]?>' class='projectTopImg'/>
		</div>
	</div>

</div>

<div class='modal fade' role='dialog' aria-hidden='true' id='toast<?=$project["id"]?>' aria-labelledby='titletoast<?=$project["id"]?>' style='min-width:100vw;'>
	<div class="modal-dialog modal-dialog-centered modal-xl custom-modal" role="document">
		<div class='modal-content'>
			<div class='modal-header d-flex align-items-center pl-4 pb-1 pt-1'>
				<h5 class='modal-title ml-2' id='titletoast<?=$project["id"]?>'><?=$project["title"]?></h5>
				<button type="button" class="close" aria-label="close" data-dismiss='modal'>
				      <span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class='modal-body'>
				<div class='container-fluid'>
					<div class='row d-flex justify-content-center align-items-center'>

						<div class='col-lg-8 col-12 carousel slide' id='carouselProject<?=$project["id"]?>' data-ride='carousel'>
							<ol class="carousel-indicators">
								<?php
									$projects->set_slider_marker($project["id"]);	
								?>
							</ol>

							<div class='carousel-inner'>
								<?php
									$projects->set_slider_image($project["id"]);
								?>
							</div>

							<a class="carousel-control-prev" href="#carouselProject<?=$project["id"]?>" role="button" data-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>

							<a class="carousel-control-next" href="#carouselProject<?=$project["id"]?>" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>

						</div>

						<div class='col-lg-4 col-12 row p-2 d-flex justify-content-center' id='specs'>
							<p class='col-12 m-lg-0 mt-2'><?=$project["description"]?></p>
							<span class='col-lg-12 col-md-12 col-12'><?=$project["able"]?></span>
							<span class='col-lg-12 col-md-12 col-12'><?=$project["tech"]?></span>
						</div>

					</div>
				</div>
			</div>
			<div class='modal-footer'>
				<a href='<?=$project["git"]?>' class='btn btn-secondary'>GitHub</a>
				<?php
					if($project["file"] != ""){ ?>
				
						<a href='<?=$project["file"]?>' class='btn btn-primary'>Download</a>

				<?php } if($project["link"] != ""){ ?>
				
						<a href='<?=$project["link"]?>' class='btn btn-primary'>Visit</a>

				<?php	}
				?>
			</div>
		</div>
	</div>
</div>

<?php $project_text = ob_get_clean(); ?>
