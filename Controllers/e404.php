<?php
class e404Controller extends Controller{
    
    function __construct(){
        echo '</br> ***e404Controller loaded*** </br>';
        $this->loadModel('e404');
        $this->loadView('e404');
    }
    
}
?>