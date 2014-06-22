<?php
class MainPageController extends Controller{
    
    function __construct(){
        $this->loadModel('MainPage');
        $this->loadView('MainPage');
    }
    
}
?>