<?php
    
require 'dbConf.php';

class Model {
    public $db;
    private $connected = false;
    
    function __construct(){
        $conf = dbConfig::$dbConf;
        if($this->connected){ return true;  }
        try{
            echo'--connection to database---';
            $pdo = new  PDO('mysql:host='.$conf['host'].';dbname='.$conf['database'].';',$conf['login'],$conf['password'],
                           array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8')
            );
            $this->db = $pdo;
            $this->connected = true;
        }catch(PDOException $e){
             die($e->getMessage());
        }
    }
    
    public function findQuery($cond, $table){
        $sql = 'SELECT * FROM '.$table.' as '.'Posts';
        if(isset($cond['conditions'])){
            $sql .= ' WHERE '.$cond['conditions'];
        }
        print_r($sql);
        $this->sendQuery();
    }
    
    public function sendQuery(){
        $pre = $db->prepare($sql);
        $pre->execute();
        return $pre->fetchAll(PDO::FETCH_OBJ);
    }
    
}

//require 'queryPrototypes.php';
?>