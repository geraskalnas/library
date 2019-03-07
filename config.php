<?php
switch ($_SERVER["SCRIPT_NAME"]) {
	case "/library/admin.php":
		$CURRENT_PAGE = "admin"; 
		$PAGE_TITLE = "Library System - admin";
		break;
	case "/library/login.php":
		$CURRENT_PAGE = "login"; 
		$PAGE_TITLE = "Library System - login";
		break;
	case "/library/classes.php":
		$CURRENT_PAGE = "Testing"; 
		$PAGE_TITLE = "Library System - testing";
		if(isset($_GET["test"]) && $_GET["test"]=="1") break;
	default:
		$CURRENT_PAGE = "Index";
		$PAGE_TITLE = "Library System";
}
//$active
$DBhost='remotemysql.com';
$DBusername='Y0E7ho32OA';
$DBpassword='EtWs4O2BeQ';
$DBdatabase='Y0E7ho32OA';
$db = new mysqli($DBhost, $DBusername, $DBpassword, $DBdatabase);
if ($db->connect_errno > 0) {
    die('Unable to connect to database [' . $db->connect_error . ']');
}

$bookO = new l_book();
$bookO->set_db($db);
$lu = new l_user();
$lu->set_db($db);
$id=$lu->getIdByLoggedIP(@getIP());
$name="guest";
if($id!=0){
    $lu->loadById($id);
    $name=$lu->get_name();  
}

$db->set_charset("utf8");
?>
