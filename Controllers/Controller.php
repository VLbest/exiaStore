<?php
class Controller{
    
    public $model;
    
    function __construct(){
        
    }
    
    function loadModel($name){
        $file = ROOT.DS.'Models'.DS.$name.'Model'.'.php';
        print_r($file);
        require_once($file);
        if(!isset($this->model)){
            $this->model = new $name();
        }
    }
}
?>