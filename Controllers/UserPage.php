<?php
class UserPageController extends Controller{
    
    function __construct(){
        $this->loadModel('UserPage');
        $this->loadView('UserPage');
    }
    
}
?>