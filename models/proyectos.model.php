<?php
    require_once("libs/dao.php");

    function obtenerDepartamentos(){
        $departamentos = array();
        $sqlstr = "select * from tbldepartamentos;";
        $departamentos = obtenerRegistros($sqlstr);
        return $departamentos;
    }

    function registrarProyecto($txtNombrePropietario,$txtIdentidadPropietario,$txtDireccionPropietario,$txtEmailPropietario,$txtTelefonoPropietario, $txtCelularPropietario, $txtProyectoNombre, $txtLatitud, $txtLongitud, $txtDescripcionProyecto,$cmbDepartamentoProyecto,$txtDireccionProyecto){
      $insertSQL = "INSERT INTO `tblProyectos` (`proyectoNombrePropietario`,`proyectoIdentidadPropietario`,
        `proyectoDireccionPropietario`, `proyectoCelularPropietario`,`proyectoEmailPropietario`,
        `proyectoTelefonoPropietario`,departamentoId, `proyectoDescrpcion`, proyectoLatitud, proyectoLongitud,
        `proyectoDireccion`, `usuarioIdentidad`)
      values ('%s','%s','%s','%s','%s','%s',%d,'%s',%d,%d,'%s','0801199503314');";
      $insertSQL = sprintf($insertSQL,
                           valstr($txtNombrePropietario),
                           valstr($txtIdentidadPropietario),
                           valstr($txtDireccionPropietario),
                           valstr($txtCelularPropietario),
                           valstr($txtEmailPropietario),
                           valstr($txtTelefonoPropietario),
                           $cmbDepartamentoProyecto,
                           valstr($txtDescripcionProyecto),
                           $txtLatitud,
                           $txtLongitud,
                           valstr($txtDireccionProyecto));
      return ejecutarNonQueryConErrores($insertSQL);
    }
 ?>