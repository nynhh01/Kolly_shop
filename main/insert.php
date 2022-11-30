<?php
    include('../db/connect.php');
    if (!empty($_GET['id_user'])) {
        $id_user = $_GET['id_user'];
    }  
    $detail="SELECT o.id_order, o.id_order_user,c.id_product,p.cost_current FROM orders o 
    INNER JOIN carts c ON o.id_order_user= c.id_order_user 
    INNER JOIN products p ON c.id_product=p.id_pro 
    WHERE c.id_order_user=$id_user AND o.id_order=(select max(o.id_order) FROM orders o)";
    $detail_lk= mysqli_query($mysqli,$detail);
        while($row = mysqli_fetch_array($detail_lk)){
            $id_order=$row['id_order'];
            $id_pro=$row['id_product'];
            $price=$row['cost_current'];
            $insert =" INSERT INTO orderdetails (id_order,id_pro,price) VALUES ('$id_order','$id_pro','$price') ";
            $insert_lk= mysqli_query($mysqli,$insert);
        }
    header("Location:?file=main&id_user=$id_user");
?>