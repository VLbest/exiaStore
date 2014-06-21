<?php
class Model{
    
    public $db;
    private $connected = false;
    
    function __construct(){
        echo '</br> ***Model loaded*** </br>';
        
        $conf = dbConfig::$dbConf;
        if($this->connected){ return true;  }
        try{
            echo '</br> ***connection to database*** </br>';
            $pdo = new  PDO('mysql:host='.$conf['host'].';dbname='.$conf['database'].';',$conf['login'],$conf['password'],
                           array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8')
            );
            $this->db = $pdo;
            $this->connected = true;
        }catch(PDOException $e){
             die($e->getMessage());
        }
    }
}
?>