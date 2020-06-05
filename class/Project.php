<?php
require("Bdd.php");

class Project extends Bdd{

	public function get_project_from_type($type="") {
		
		if($type=="") {
			return $this->pdo->query("SELECT * FROM projects")->fetchAll(PDO::FETCH_ASSOC);
		}
		else
		{
			$stmt = $this->pdo->prepare("SELECT projects.id, projects.title, projects.topImg FROM projects
						     INNER JOIN project_category_tag ON projects.id = project_category_tag.id_project       
						     INNER JOIN project_category ON project_category_tag.id_category = project_category.id
						     WHERE project_category.id =?;");
			$stmt->execute(array($type));
			return	$stmt->fetchAll(PDO::FETCH_ASSOC);
		}
	}
}


