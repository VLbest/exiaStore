<?php
echo "</br>hello, i am bestSellers model</br>";
class BestSellers extends Model{
    function findBest(){
        $cond = "1";
        $table = "posts";
        $bdd = $model->findQuery($cond, $table);
    }
}
?>