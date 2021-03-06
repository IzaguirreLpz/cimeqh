<?php

require_once("libs/template_engine.php");
require_once("models/usuarios.model.php");

  function run(){
    $usuarios=array();
    $htmlData = array();
    $htmlData["mostrarErrores"] = false;
    $htmlData["errores"] = array();
    $respueta="";

    if(isset($_POST["btnRegistroUsuarios"])){
      $usuarios["txtNumeroId"]=$_POST["txtNumeroId"];
      $usuarios["txtNumeroColegiacion"]=$_POST["txtNumeroColegiacion"];
      $usuarios["txtPrimerNombre"]=$_POST["txtPrimerNombre"];
      $usuarios["txtSegundoNombre"]=$_POST["txtSegundoNombre"];
      $usuarios["txtPrimerApellido"]=$_POST["txtPrimerApellido"];
      $usuarios["txtSegundoApellido"]=$_POST["txtSegundoApellido"];
      $usuarios["txtNumeroCelular"]=$_POST["txtNumeroCelular"];
      $usuarios["txtNumeroFijo"]=$_POST["txtNumeroFijo"];
      $usuarios["txtDireccion"]=$_POST["txtDireccion"];
      $usuarios["txtContrasena"]=$_POST["txtContrasena"];
      $usuarios["txtContrasenaConfirmacion"]=$_POST["txtContrasenaConfirmacion"];
      $usuarios["txtCorreo"]=$_POST["txtCorreo"];
      $rolId = 4;
      $estadoCuenta = 4;
      $resultado = 0;
/*
($userId, $userPrimernombre, $userSegundonombre, $primerApellido, $segundoApellido,
$numeroColegiacion, $userCelular,$userTelefono, $userDireccion, $userPassword, $estadoCuenta, $rolId)

*/

    if($usuarios["txtContrasena"]==$usuarios["txtContrasenaConfirmacion"]){
    /*Crear contraseña encriptada*/
    $fchingreso = time(); //date("YmdHisu"); //20141104203730069785
    //$pswdSalted = "";
    $contrasena= "";
    if($fchingreso % 2 == 0){
      $contrasena = $usuarios["txtContrasena"] . $fchingreso;
    }else{
      $contrasena = $fchingreso . $usuarios["txtContrasena"];
    }
    //$pswdSalted = md5($pswdSalted);
    $contrasena = md5($contrasena);
    //ingresar datos a la base de datos este caso tabla de usuarios

    $user["mail"]=obtenerUsuariosPorMail($usuarios["txtCorreo"]);
    $user["id"]=obtenerUsuariosPorId($usuarios["txtNumeroId"]);

    if($user["mail"]=="" || $user["id"]=="")
    {
      $respueta = insertUsuario($usuarios["txtNumeroId"],
      $usuarios["txtPrimerNombre"],
      $usuarios["txtSegundoNombre"],
      $usuarios["txtPrimerApellido"],
      $usuarios["txtSegundoApellido"],
      $usuarios["txtNumeroColegiacion"],
      $usuarios["txtNumeroCelular"],
      $usuarios["txtNumeroFijo"],
      $usuarios["txtDireccion"],
      $contrasena,
      $estadoCuenta,
      $rolId,
      $usuarios["txtCorreo"],
      $fchingreso);
      redirectWithMessage("Su cuenta ha sido creada, esta debe ser verificada por el CIMEQH, se le notificara mediante un correo cuando su cuenta este activa.","?page=login");
    }


    echo $respueta;     
    redirectWithMessage("Su cuenta ya existe verifique su correo para enterarse si esta ha sido verificada por el CIMEQH.","?page=login");
    header($location);

    }
    else{
      $htmlData["mostrarErrores"] = true;
      $htmlData["errores"][]=array("errmsg"=>"Contraseñas no coinciden");
      }

    }

    renderizar("registroUsuarios",  $htmlData,'layoutSinSesion2.view.tpl');
  }
  run();
?>
