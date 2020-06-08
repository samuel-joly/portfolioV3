<?php
require("Bdd.php");

class Project extends Bdd{
	
	public $images = "";

	public function get_project_from_type($type="") {
		
		if($type=="") {
			return $this->pdo->query("SELECT * FROM projects")->fetchAll(PDO::FETCH_ASSOC);
		}
		else
		{
			$stmt = $this->pdo->prepare("SELECT projects.id, projects.description, projects.tech, projects.able, projects.git, projects.file, projects.link, projects.title, projects.topImg FROM projects
						     INNER JOIN project_category_tag ON projects.id = project_category_tag.id_project       
						     INNER JOIN project_category ON project_category_tag.id_category = project_category.id
						     WHERE project_category.id =?;");
			$stmt->execute(array($type));
			return	$stmt->fetchAll(PDO::FETCH_ASSOC);
		}
	}


	public function set_slider_marker($id) {
		
		$count = 0;
		$imgs = [];
		
		foreach(scandir("css/assets/projects/projects-slider/".$id."/") as $img) { 
			if(!is_dir($img)) {
				if($count == 0) {
			?>
					<li data-target="#carouselProject<?=$id?>" data-slide-to="<?=$count?>" class="active"></li> <?php
				} else { ?>
					<li data-target="#carouselProject<?=$id?>" data-slide-to="<?=$count?>"></li> <?php
				}

				$imgs[] .= $img;
			}

			$count++;
		}

		$this->images = $imgs;
	}


	public function set_slider_image($id) {
		
		$count = 0;
		foreach($this->images as $img) {  

			if($count == 0) { ?>
				
				<div class='carousel-item active'>

		<?php   } else 		{ ?>

				<div class='carousel-item'>

		<?php   } ?>

			<img src='css/assets/projects/projects-slider/<?=$id?>/<?=$img?>' class='d-bloc w-100' alt='<?=pathinfo($img, PATHINFO_BASENAME)?>'/>
		</div>

		<?php $count++; } 
	}
}


