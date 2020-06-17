<?php
	$lang = substr($_SERVER["HTTP_ACCEPT_LANGUAGE"],0,2);
	$whitelist = ["en", "fr"];
	$d_lang = (in_array($lang, $whitelist)) ? $lang : "en";

	switch($d_lang) {
		case "en":
			header("Location: en/index.php");
			break;

		case "fr":
			header("Location: fr/index.php");
			break;
		
	}

?>
