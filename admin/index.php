<?php
    $file = 'admin';
    if (!empty($_GET['file'])) {
        $file = $_GET['file'];
    }
    require $file.'.php';
?>