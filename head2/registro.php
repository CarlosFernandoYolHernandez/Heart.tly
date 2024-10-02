<?php
include'includes/conect.php';
include'includes/querys.php';
include'includes/acciones.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <title>Registro</title>
</head>
<body>
<header>
  <h2 class="text text-center" >
    Registrate en Heart.Thly
  </h2>
</header>    





<div class="card text-bg-white">
  <img src="img\Heart.thly_gris.png" class="card-img" alt="...">
  <div class="card-img-overlay">
    
  </div>
</div>



<div class="container">
    <section id="contenedor">
        <div class="row justify-content-center">
          <div class="col-sm-10 col-md-10 col-lg-10">
            <div class="card shadow">
                <form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
                <div class="row mt-4 mb-2">   
                     <div class="col">
                     <input type="text" name="User" placeholder="Nombres"  id="caja"  class="form-control">
                     </div>
                </div>
                <div class="row mt-4 mb-2">   
                       <div class="col">
                       <input type="text" name="User" placeholder="Apellido Paterno"   id="caja" class="form-control">
                       </div>
                </div>
                <div class="row mt-4 mb-2">   
                     <div class="col">
                     <input type="text" name="User" placeholder="Apellido Materno"  id="caja" class="form-control">
                     </div>
                </div>
                <div class="row mt-4 mb-2">   
                     <div class="col">
                     <input type="text" name="User" placeholder="Fecha de Nacimiento"  id="caja" class="form-control">
                     </div>
                </div>
                <div class="row mt-4 mb-2">   
                     <div class="col">
                     <input type="text" name="User" placeholder="Dirección"  id="caja" class="form-control">
                     </div>
                </div>
                <div class="row mt-4 mb-2">   
                     <div class="col">
                     <input type="text" name="User" placeholder="Usuario"  id="caja" class="form-control">
                     </div>
                </div>
                <div class="row mt-4 mb-2">   
                     <div class="col">
                     <input type="text" name="User" placeholder="Correo Electronico"  id="caja" class="form-control">
                     </div>
                </div>
                <div class="row mt-4 mb-2">   
                     <div class="col">
                     <input type="text" name="User" placeholder="Correo Electronico de recuperacion" id="caja" class="form-control">
                     </div>
                </div>
                <div class="row mt-4 mb-2">   
                     <div class="col">
                     <input type="password" name="User" placeholder="Contraseña"  id="caja" class="form-control">
                     </div>
                </div>
                
                
                    
                    <div class="row mt-4 mb-2">
                        <div class="col">
                        <select name="Tusuario" id="Tusuario" class="form-select" required >
                          <?php while($row = $ETusuario->fetch_assoc()) { ?>  
                               <option value="<?php echo $row['id_TUsuario']; ?>"><?php echo $row['Nombre_TUser']; ?></option>
                          <?php } ?>  
                        </select>
                        </div>
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                    <input type="button" name="BotonIngresar" class="btn btn-primary"  value="Registrarse">
                    </div>
                    
                </form>
            </di>
          </div>
        </div>
    </section>
</div>

<footer  class="ft" >
  Al hacer click en "Registrarse",aceptas <br>
  nuestros terminos y condiciones, Politica de Privacidad y<br>
   Politica de Cookies
</footer>
<script src="js/boostrap.min.js"></script>
</body>
</html>