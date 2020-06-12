<?php

	$lang = substr($_SERVER["HTTP_ACCEPT"],0,2);
	$whitelist = ["en", "fr"];
	$d_lang = (in_array($lang, $whitelist)) ? $lang : "en";

	switch($d_lang) {
		case "en":
			header("location:index_en.php");
			break;

		case "fr":
			header("location:index_fr.php");
			break;
		
	}

?>
