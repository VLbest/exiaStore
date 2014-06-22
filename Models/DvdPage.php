<?php
class DvdPageModel extends Model{
    
    public function getAllDVD(){
        $sql = "SELECT DISTINCT * 
FROM ((
 `itemscategories` 
NATURAL JOIN  `categories`
)
NATURAL JOIN  `items`) NATURAL JOIN  `state`
WHERE Name_Category =  'DVD'";
        return $res = $this->query($sql);
    }
}
?>