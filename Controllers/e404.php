<?php
class E404Controller extends Controller{
    
    function __construct(){
        $this->loadModel('E404');
        $this->loadView('E404');
    }
    
}
?>