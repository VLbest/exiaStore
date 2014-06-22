<?php
class CdPageController extends Controller{
    
    function __construct(){
        $this->loadModel('CdPage');
        $dbAnswer = $this->model->getAllCD();
        $this->loadView('CdPage', $dbAnswer);
    }
    
}
?>