<?php

  require_once("libs/template_engine.php");

  require_once("models/proyectos.model.php");

  function run(){

    if (mw_estaLogueado()) {
      if ($_SESSION["estado"]==1) {
        if ($_SESSION["rol"]==4) {
          $departamentos= array( );
          $proyecto = array( );
          $departamentos=obtenerDepartamentos();
          $tipos=obtenerTipoProyectos();
          $respueta="";

          if (isset($_POST["btnRegistrarProyecto"])) {
            $proyecto["txtNombrePropietario"]=$_POST["txtPropietarioNombre"];
            $proyecto["txtDireccionPropietario"]=$_POST["txtDireccionPropietario"];
            $proyecto["txtEmailPropietario"]=$_POST["txtEmailPropietario"];
            $proyecto["txtTelefonoPropietario"]=$_POST["txtTelefonoPropietario"];
            $proyecto["txtCelularPropietario"]=$_POST["txtCelularPropietario"];
            $proyecto["txtNombreProyecto"]=$_POST["txtNombreProyecto"];
            $proyecto["txtLatitud"]=$_POST["txtLatitud"];
            $proyecto["txtLongitud"]=$_POST["txtLongitud"];
            $proyecto["txtIdentidadPropietario"]=$_POST["txtIdentidadPropietario"];
            $proyecto["cmbDepartamentoProyecto"]=$_POST["cmbProyectoDepartamento"];
            $proyecto["txtDireccionProyecto"]=$_POST["txtDireccionProyecto"];
            $proyecto["txtDescripcionProyecto"]=$_POST["txtDescripcionProyecto"];
            $proyecto["cmbProyectoTipo"]=$_POST["cmbProyectoTipo"];

            $respueta=registrarProyecto($proyecto["txtNombrePropietario"],
            $proyecto["txtIdentidadPropietario"],
            $proyecto["txtDireccionPropietario"],
            $proyecto["txtEmailPropietario"],
            $proyecto["txtTelefonoPropietario"],
            $proyecto["txtCelularPropietario"],
            $proyecto["txtNombreProyecto"],
            $proyecto["txtLatitud"],
            $proyecto["txtLongitud"],
            $proyecto["txtDescripcionProyecto"],
            $proyecto["cmbDepartamentoProyecto"],
            $proyecto["txtDireccionProyecto"],
            $proyecto["txtNombreProyecto"],
            $proyecto["cmbProyectoTipo"]);

            $location="Location:index.php?page=registroProyectos&error=".$respueta;
            header($location);
          }

          renderizar("registroProyectos",  array("departamentos"=>$departamentos, "tipos"=>$tipos));

        }else {
          redirectWithMessage("No cuenta con los privilegios de usuario adecuado para ver esta páagina.","?page=login");
        }
      }else if ($_SESSION["estado"] == 4) {
          redirectWithMessage("Su cuenta todavia no ha sido verificada por el CIMEQH.","?page=login");
      }elseif ($_SESSION["estado"] == 3) {
        redirectWithMessage("Su cuenta ha sido supendida por: ".$_SESSION["comentario"],"?page=login");
      }
    }else {
      mw_redirectToLogin("page=login");
    }


  }

  run();
?>
