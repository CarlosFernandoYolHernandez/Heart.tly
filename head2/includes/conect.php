<?php
$NameServer ="localhost";
$UserName ="root";
$Password ="";
$NameDba="app";

$Connect = new mysqli($NameServer, $UserName, $Password, $NameDba);
if($Connect->connect_error){
    die("error" .$Connect->connect_error);
}

?><