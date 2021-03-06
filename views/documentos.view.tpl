<div class="right_col" role="main">
  <div class="">
    <div class="col-md-12 col-sm-12 col-xs-12">
      <div class="x_panel">
        <div class="x_title">

          <h1>Documentos Cargados para el Proyecto: {{nombre}}</h1>
          <h2>Descripcion del Proyecto: {{descripcion}}</h2>

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
          </p>

          <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Descripción del Archivo</th>
                <th>Acciones</th>
              </tr>
            </thead>
            <tbody>
              {{foreach solicitud}}
                <tr>
                  <td>{{documentoNombre}}</td>
                  <td> <a href="{{documentoRecepcionDireccion}}" download>
                    <input type="button" name="btnDescargar" id="btnDescargar" class="btn btn-warning" value="Ver Documentos Agregados" target="_blank">
                  </a>
                  </td>
                </tr>
              {{endfor solicitud}}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
