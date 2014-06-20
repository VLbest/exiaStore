<?php
define('ROOT', dirname(__FILE__));
define('DS', DIRECTORY_SEPARATOR);
session_start();
include 'Controllers/Controller.php';
include 'Models/Model.php';
$controller = new Controller();

include 'Views/header.php';

if(!empty($_GET['page']) AND is_file('Controllers'.DS.$_GET['page'].'Controller'.'.php')){
    $name = $_GET['page'];
    $controller->loadModel($name);
}else{
    include('Controllers/e404.php');
}

include 'Views/footer.php';

?>