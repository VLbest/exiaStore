<?php
define('DS', DIRECTORY_SEPARATOR);
define('ROOT', dirname(__FILE__));
define('CORE', ROOT.DS.'core');

require CORE.DS.'includes.php';

$dispatcher = new Dispatcher();

require 'Views'.DS.'header.php';

if(!empty($_GET['page'])){
    $name = $_GET['page'];
    $controller = $dispatcher->loadController($name);

}else{
    
}

require 'Views'.DS.'footer.php';

?>