<?php
class Cart{
    function __construct(){
        if(!isset($_SESSION['cart'])){
            $_SESSION['cart'] = array();
        }
    }
}
?>