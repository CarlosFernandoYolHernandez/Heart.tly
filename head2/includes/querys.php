<?php 
 include 'conect.php';
 $Usuarios = "SELECT * FROM  usuario ORDER BY Nombre_Usuario ASC";
 $Eusuarios =  $Connect->query($Usuarios);

 // accesder a los tipos de usuario 
 $Tusuarios = "SELECT * FROM tipo_usuario";
 $ETusuario = $Connect ->query($Tusuarios );

?>