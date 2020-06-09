<?php


class Bdd {
	
	protected $pdo="";

	public function __construct(){
		try {
			$pdo = new PDO("mysql:host=localhost;dbname=portfolio","root","");
		} catch (Exception $e){
			echo 'Bdd fail to init PDO, Error: '. $e->getMessage();
		}

		$this->pdo = $pdo;
	}

}
