<?php
    include('../db/connect.php');
    if (!empty($_GET['id'])) {
        $id_pro = $_GET['id'];
        $sql="DELETE FROM products WHERE id_pro = '$id_pro'";
        $query_lk= mysqli_query($mysqli, $sql);
        header('Location: '. '?file=products');
    }
?>