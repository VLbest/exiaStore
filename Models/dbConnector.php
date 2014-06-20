<?php
    
require 'dbConf.php';

class dbConnector {
    public $db;
    private $connected = false;
    
    function __construct(){
        $conf = dbConf::$dbConf;
        if($this->connected){ return true;  }
        try{
            $pdo = new  PDO('mysql:host='.$conf['host'].';dbname='.$conf['database'].';',$conf['login'],$conf['password'],
                           array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8')
            );
            $this->db = $pdo;
            $this->connected = true;
        }catch(PDOException $e){
             die($e->getMessage());
        }
    }
    
    public function find($req, $table){
        $sql = 'SELECT * FROM '.$table.' as '.'Posts';
        if(isset($req['conditions'])){
            $sql .= ' WHERE '.$req['conditions'];
        }
        $pre = $this->db->prepare($sql);
        $pre->execute();
        return $pre->fetchAll(PDO::FETCH_OBJ);
    }
    
}
?>