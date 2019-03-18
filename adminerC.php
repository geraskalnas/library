<?php
require_once("classes.php");
require_once("config.php");
require_once("pre.php");

//if(!$lu->isAdmin()) die("only admin");
if(($lu->get_type())!="admin") {
    $layout->set("content", "only admin");
    echo $layout->output();
    die();
}

$content="";

$l=array();
foreach(scandir($ppath) as $file){
    if($file!="." && $file!="..")array_push($l, $file);
}

foreach($l as $url){
    $ra=array();
    $dat=json_decode(file_get_contents($ppath.$url), true);
    analyzeC($dat, $ra);
    $content.='<form action="tools/adminer.php" method="post">';
    foreach($ra as $item){
        $path=$item[0];
        $value=$item[1];
        $content.="<input type=\"hidden\" name=\"". htmlspecialchars($path) ."\" value=\"". htmlspecialchars($value) ."\">\n";
    }
    $content.="<input type=\"submit\" value=\"$url\">\n";
    $content.="</form>\n";
    $content.="</br>\n";
}

$layout->set("content", $content);
echo $layout->output();
?>
