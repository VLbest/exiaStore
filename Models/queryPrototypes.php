<?php
    function findQuery($cond, $table){
        $sql = 'SELECT * FROM '.$table.' as '.'Posts';
        if(isset($cond['conditions'])){
            $sql .= ' WHERE '.$cond['conditions'];
        }
        print_r($sql);
        $pre = $model->db->prepare($sql);
        $pre->execute();
        return $pre->fetchAll(PDO::FETCH_OBJ);
    }
?>