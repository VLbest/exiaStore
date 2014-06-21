<?php
class UserPageController extends Controller{
    
    function __construct(){
        echo '</br> ***UserPageController loaded*** </br>';
        $this->loadModel('UserPage');
        $this->loadView('UserPage');
    }
    
}
?>