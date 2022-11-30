<?php
    include('../db/connect.php');
    if (!empty($_GET['id_user'])) {
        $id_user = $_GET['id_user'];
    }
    if (!empty($_GET['id'])) {
        $id_product = $_GET['id'];
    }
    $sql="DELETE FROM carts WHERE id_product = $id_product AND id_order_user=$id_user";
        $query_lk= mysqli_query($mysqli, $sql);
        header("Location:?file=cart&id_user=$id_user");
?>