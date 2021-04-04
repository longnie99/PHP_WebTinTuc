<?php
session_start();
unset($_SESSION['amin_hoten']);
header('Location: http://localhost:88/tintucdulich/admin/login.php');
?>