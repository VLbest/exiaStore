<?php
class DvdPageController extends Controller{
    
    function __construct(){
        $this->loadModel('DvdPage');
        $dbAnswer = $this->model->getAllDVD();
        $this->loadView('DvdPage', $dbAnswer);
    }
    
}
?>