<?php
session_start();  //any place using this file. 
$dbHost = 'localhost';
$dbName = 'auto_routine';
$dbUsername = 'root';
$dbPassword = '';
$conn = mysqli_connect($dbHost,$dbUsername,$dbPassword,$dbName);
?>