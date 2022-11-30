<?php
    include('../db/connect.php');
    if (!empty($_GET['id_user'])) {
        $id_user = $_GET['id_user'];
    }
    if(isset($_POST['submit__order'])){
        $fullname=$_POST['fullname'];
        $email=$_POST['email'];
        $phone_number=$_POST['phone_number'];
        $address=$_POST['address'];
        $note=$_POST['note'];
        $date_order=date("Y/m/d");
        $sql="INSERT INTO orders(id_order_user,fullname,email,phone_number,address,note,date_order) VALUES('$id_user','$fullname','$email','$phone_number','$address','$note','$date_order')";
        $query_lk= mysqli_query($mysqli, $sql);
        header("Location:?file=insert&id_user=$id_user");
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kolly | Order</title>
    <link rel="shortcut icon" href="data:image/png;base64,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" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/4f34545577.js" crossorigin="anonymous"></script>

</head>
<body>
    <div class="nav-back">
        <div class="max">
            <div class="nav">
                <div class="nav-left">
                    <ul>
                        <li><a href="?file=main">Trang chủ</a></li>
                        <li><a href="?file=cart">Giỏ hàng</a></li>
                    </ul>
                </div>
                <img src="/img/logo.webp" alt="" class="logo">
                
                <div class="nav-right">
                    <div class="icon">
                        <i class="fa-regular fa-user"></i>
                        <div class="heart">
                            <i class="fa-regular fa-heart"></i>
                            <p>0</p>
                        </div> 
                        <i class="fa-solid fa-cart-shopping"></i>
                        <i class="fa-solid fa-id-card"></i>
                    </div>
                </div>
              
            </div>
        </div>
    </div>
    
    <section class="order__form">
        <p class="in4__order">Vui lòng điền thông tin giao hàng</p>
        <form action="" class="form__item"  autocomplete="off" method="post">
            <div class="order">
                <p>Họ và Tên</p>
                <input type="text" name="fullname" id="" required>
            </div>
            <div class="order">
                <p>Email</p>
                <input type="email" name="email" id="" required>
            </div>
            <div class="order">
                <p>Số điện thoại</p>
                <input type="text" name="phone_number" id="" required>
            </div>
            <div class="order">
                <p>Địa chỉ giao hàng</p>
                <input type="text" name="address" id="" required>
            </div>
            <div class="order">
                <p>Lưu ý</p>
                <input type="text" name="note" id="">
            </div>
            <input type="submit" value="Đặt hàng" name="submit__order" class="submit--add--cart">
        </form>
    </section>

</body>
</html>