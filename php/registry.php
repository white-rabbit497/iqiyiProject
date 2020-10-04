<?php
include "conn.php";
if(isset($_POST['submit'])){
    $name = $_POST['username'];
    $password = sha1($_POST['password']);
    $tel = $_POST['tel'];
    $conn->query("insert user values(null,'$name','$password','$tel')");
//设置页面跳转,点击确定之后会跳转到登录页面
    header('location:http://10.31.152.60/project/src/login.html');
}
 
//检查数据库中用户名是否存在
if(isset($_POST['name'])){ //只要我用户名写上了就会判断
    $name = $_POST['name'];
   $result = $conn->query("select * from user where username = '$name'"); //接受查询到的值
    print_r ($result->fetch_assoc());
   if($result->fetch_assoc()){ //如果查询到结果了就说明用户名重复了
        echo true; //用户名重复
    }else{
        echo false; //用户名没有重复
    }
}