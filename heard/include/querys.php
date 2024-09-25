<?php
include = "conecta.php";

$ConectaUsuario ="Select * FROM usuario ORDER BY ASC";
$Eject =$ConectaUsuario->query($ConectaUsuario);
  
?>