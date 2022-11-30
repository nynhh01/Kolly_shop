<?php
    session_start();
    include('../db/connect.php');
    if(isset($_POST['signin'])){
        $username=$_POST['username'];
        $email=$_POST['email'];
        $pass=$_POST['pass'];
        $sql="INSERT INTO login_user(username,pass,email) VALUES('$username','$pass','$email')";
        if($mysqli->query($sql)===TRUE){
            echo '<script>alert("Đăng ký thành công. Vui lòng chọn mục ĐĂNG NHẬP")</script>';
        }  
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kolly | Sign in</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="login">
        <div class="login-img2">
            <div class="login-form">
                <h1>Đăng ký</h1>
                <p id="login__title">Cửa hàng cây xanh Kolly</p>
                <form action="" autocomplete="off" method="post">
                    <div class="box">
                        <input type="text" name="username" id="make" placeholder="Tên đăng nhập" required >
                    </div>
                    <div class="box">
                        <input type="email" name="email" id="make" placeholder="Email" required>
                    </div>
                    <div class="box">
                        <input type="password" name="pass" id="make" placeholder="Mật khẩu" pattern=".{8,}" required >
                    </div>
                    <div class="submit__btn">
                    <input type="submit" name="signin" value="Đăng ký">
                    </div>
                </form>
                <div class="last-sub">
                    <a href="?file=login" class="signin">Đăng nhập</a>
                </div>
                
            </div>
        </div>
    </div>
</body>

</html>