<?php
include "conn.php";

$pagesize = 12;
$result = $conn->query("select * from goods");
$num = $result->num_rows; //记录总条数 
$pagenum = ceil($num / $pagesize); //获取页数 

//获取前端的传来的页码，根据页码查询对应的数据，返回给前端。
if (isset($_GET['page'])) {//获取前端传来的页码
    $pagevalue = $_GET['page'];//将页面赋值给$pagevalue
} else {//前端没有传入页面 赋值1
    $pagevalue = 1;
}

//计算limit第一个参数的结果。返回数据的偏移值。
$page = ($pagevalue - 1) * $pagesize;
$res = $conn->query("select * from goods limit $page,$pagesize");
$arr = array();
for ($i = 0; $i < $res->num_rows; $i++) {
    $arr[$i] = $res->fetch_assoc();
}
echo json_encode($arr);//输出接口