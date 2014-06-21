<?php
class Dispatcher {
    
    public $controller;
    
    function __construct(){
        echo '</br> ***Dispatcher loaded*** </br>';
    }
    
    function loadController($name){
        $name = ucfirst($name);
        $ClassName = $name.'Controller';
        $file = ROOT.DS.'Controllers'.DS.$name.'.php';
    /*
       *echo '</br>';
        print_r($name);
         echo '</br>';
        print_r($ClassName);
         echo '</br>';
        print_r($file);
        echo '</br>';
        
    */
        if(is_file($file)){
            require $file;
            return new $ClassName();
        }else{
        }
    }
}

?>