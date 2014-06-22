<?php
class Dispatcher {
    
    public $controller;
    
    function __construct(){
        
    }
    
    function loadController($name){
        $name = ucfirst($name);
        $ClassName = $name.'Controller';
        $file = ROOT.DS.'Controllers'.DS.$name.'.php';
        if(is_file($file)){
            require $file;
            return new $ClassName();
        }else{
            $this->loadController('E404');
            return false;
        }
    }
}

?>