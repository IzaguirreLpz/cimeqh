<div class="right_col" role="main">
  <div class="">
    <div class="col-md-12 col-sm-12 col-xs-12">
      <div class="x_panel">
        <div class="x_title">
          <h2>Mis Solicitudes de Factibilidad<small></small></h2>
          <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Settings 1</a>
                </li>
                <li><a href="#">Settings 2</a>
                </li>
              </ul>
            </li>
            <li><a class="close-link"><i class="fa fa-close"></i></a>
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>
        <div class="x_content">
          <p class="text-muted font-13 m-b-30">
            Responsive is an extension for DataTables that resolves that problem by optimising the table's layout for different screen sizes through the dynamic insertion and removal of columns from the table.
          </p>

          <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Código de la  Solicitud</th>
                <th>Nombre del Proyecto</th>
                <th>Nombre del Propietario</th>
                <th>Identidad del Propietario</th>
                <th>Estado e la Solicitud</th>
                <th>Acciones</th>
              </tr>
            </thead>
            <tbody>
              {{foreach solicitudes}}
                <tr>
                  <td>{{solicitudFactibilidadId}}</td>
                  <td>{{proyectoNombre}}</td>
                  <td>{{proyectoNombrePropietario}}</td>
                  <td>{{proyectoIdentidadPropietario}}</td>
                  <td>{{estadoFactibilidadDescripcion}}</td>
                  <td>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg-{{solicitudFactibilidadId}}">Ver</button>

                    <div class="modal fade bs-example-modal-lg-{{solicitudFactibilidadId}}" tabindex="-1" role="dialog" aria-hidden="true">
                      <div class="modal-dialog modal-lg">
                        <div class="modal-content">

                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel">Dictamen</h4>
                          </div>
                          <div class="modal-body">
                            Nombre del Proyecto: {{proyectoNombre}}
                            <br>
                            Departamento: {{departamentoDescripcion}}
                            <br>
                            Direccion Exacta del Proyecto: {{proyectoDireccion}}
                            <br>
                            Descripcion del Proyecto: {{proyectoDescrpcion}}
                            <br>
                            Coordenadas del Proyecto: Latitud: {{proyectoLatitud}} Longitud: {{proyectoLongitud}}
                            <br>
                            <h4>Datos del Propietario</h4>
                            Nombre del Propietario: {{proyectoNombrePropietario}}
                            <br>
                            Identidad Propietario: {{proyectoIdentidadPropietario}}
                            <br>
                            Telefono Propietario: {{proyectoTelefonoPropietario}}
                            <br>
                            Celular Propietario: {{proyectoCelularPropietario}}
                            <br>
                            Email Propietario: {{proyectoEmailPropietario}}
                            <br>
                            Dirección Propietario: {{proyectoDireccionPropietario}}
                            <br>
                            <h4>Datos de la Solicitud</h4>
                            Voltaje: {{voltajeDescripcion}}
                            <br>
                            Tipo de Conexion: {{conexionDescripcion}}
                            <br>
                            Potencia: {{solicitudFactibilidadPotencia}}
                            <br>
                            Crecimiento Futuro: {{solicitudadFactibilidadCrecimientoEsperado}} %
                            <br>
                            KVA a Instalar: {{solicitudFactibilidadKva}}
                            <br>
                            {{if comentario}}
                              <h4>comentario: {{comentario}}</h4>
                            {{endif comentario}}
                          </div>
                          <div class="modal-footer">
                            {{if reintentar}}
                                <a href="index.php?page=factibilidadProyectos&proyectoId={{proyectoId}}&accion=UPD"><button type="button" class="btn btn-success">Modificar Solicitud</button></a>
                            {{endif reintentar}}
                            {{ifnot reintentar}}
                            <a href="{{factibilidadDocumentoDireccion}}" download>
                              <button type="button" class="btn btn-primary btn-lg">
                                <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span> Descargar Documento de la Enee
                              </button>
                            </a>
                            {{endifnot reintentar}}

                          </div>
                        </div>
                      </div>

                    </div>
                  </td>
                </tr>
              {{endfor solicitudes}}
            </tbody>
          </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
