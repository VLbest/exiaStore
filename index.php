<?php
define('ROOT', dirname(__FILE__));
define('DS', DIRECTORY_SEPARATOR);
session_start();
include 'Models/dbConnector.php';
include 'Views/header.php';

if(!empty($_GET['page']) AND is_file('Controllers'.DS.$_GET['page'].'.php')){
    include('Controllers'.DS.$_GET['page'].'.php');
}else{
    include('Controllers/e404.php');
}

include 'Views/footer.php';

?>