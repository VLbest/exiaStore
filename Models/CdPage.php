<?php
class CdPageModel extends Model{
    
    public function getAllCD(){
        $sql = "SELECT DISTINCT * 
FROM ((
 `itemscategories` 
NATURAL JOIN  `categories`
)
NATURAL JOIN  `items`) NATURAL JOIN  `state`
WHERE Name_Category =  'CD'";
        return $res = $this->query($sql);
    }
}
?>