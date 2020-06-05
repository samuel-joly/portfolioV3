<?php
include("class/Project.php");

if(isset($_GET["action"])) {
	
	switch($_GET["action"]) {

		case "get_project_from_type":
			if(!isset($_GET["type"])){
				$_GET["type"] = "";
			}

			$projects = new Project();
			$content = $projects->get_project_from_type($_GET["type"]);
			
			$return_value = [];
			foreach($content as $project) {
				include("view/projectView.php");
				$return_value[] .= $project_text;
			}
			echo json_encode($return_value);
			
		break;


		default:
			print_r($_GET["action"]."this action does not exists");
		break;
	}

}

?>
