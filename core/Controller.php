<?php
class Controller{
    public $model;
    public $view;
    
    function __construct(){
        echo '</br> ***Controller loaded*** </br>';
    }
    
    function loadModel($name){
        $name = ucfirst($name);
        $ClassName = $name.'Model';
        $file = ROOT.DS.'Models'.DS.$name.'.php';
        if(is_file($file)){
            require $file;
            $this->model = new $ClassName();
        }else{
        }
    }
    
    function loadView($name){
        $name = ucfirst($name);
        $ClassName = $name.'View';
        $file = ROOT.DS.'Views'.DS.$name.'.php';
        if(is_file($file)){
            require $file;
            $this->view = new $ClassName();
        }else{
        }
    } 
}
?>