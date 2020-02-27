<?php
if(isset($_POST['del_ticket'])){

  date_default_timezone_set("America/Mexico_City");
  $id=MysqlQuery::RequestPost('del_ticket');
  $calificacion=MysqlQuery::RequestPost('optCalificacion');
  $fecha_evaluacion= date("d/m/Y h:i:s");

  if(MysqlQuery::Actualizar("ticket", "calificacion='$calificacion',estado_ticket='Resuelto',fechaEvaluacion='$fecha_evaluacion'","serie='$id'")){
    echo '
        <div class="alert alert-info alert-dismissible fade in col-sm-3 animated bounceInDown" role="alert" style="position:fixed; top:70px; right:10px; z-index:10;">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
            <h4 class="text-center">Servicio Calificado!</h4>
            <p class="text-center">
                El ticket fue Calificado de manera exitosa
            </p>
        </div>
    ';
  }else{
    echo '
        <div class="alert alert-danger alert-dismissible fade in col-sm-3 animated bounceInDown" role="alert" style="position:fixed; top:70px; right:10px; z-index:10;">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
            <h4 class="text-center">OCURRIÓ UN ERROR</h4>
            <p class="text-center">
                Lo sentimos, no hemos podido eliminar el ticket
            </p>
        </div>
    ';
  }
}
//$email_consul=  MysqlQuery::RequestGet('email_consul');
$id_colsul= MysqlQuery::RequestGet('id_consul');
$email_consul =  $_SESSION['email'];

$consulta_tablaTicket=Mysql::consulta("SELECT * FROM ticket WHERE serie= '$id_colsul' AND email_cliente='$email_consul'");
if(mysqli_num_rows($consulta_tablaTicket)>=1){
  $lsT=mysqli_fetch_array($consulta_tablaTicket, MYSQLI_ASSOC);
?>
        <div class="container">
            <div class="row well">
            <div class="col-sm-2">
                <img src="img/status.png" class="img-responsive" alt="Image">
            </div>
            <div class="col-sm-10 lead text-justify">
              <h2 class="text-info">Estado de ticket de soporte</h2>
              <p>Si su <strong>ticket</strong> no ha sido solucionado aún, espere pacientemente, estamos trabajando para poder resolver su problema y darle una solución.</p>
            </div>
          </div><!--fin row well-->
          <div class="row">
              <div class="col-sm-12">
                    <div class="panel panel-success">
                        <div class="panel-heading text-center"><h4><i class="fa fa-ticket"></i> Ticket &nbsp;#<?php echo $lsT['serie']; ?></h4></div>
                      <div class="panel-body">
                          <div class="container">
                              <div class="col-sm-12">
                                  <div class="row">
                                      <div class="col-sm-4">
                                          <img class="img-responsive" alt="Image" src="img/tux_repair.png">
                                      </div>
                                      <div class="col-sm-8">
                                          <div class="row">
                                              <div class="col-sm-6"><strong>Fecha de Apertura:</strong> <?php echo $lsT['fecha']; ?></div>
                                              <div class="col-sm-6"><strong>Fecha de Cierre:</strong> <?php echo $lsT['fechaCierre']; ?></div>
                                          </div>
                                          <br>
                                          <div class="row">
                                              <div class="col-sm-6"><strong>Nombre:</strong> <?php echo $lsT['nombre_usuario']; ?></div>
                                              <div class="col-sm-6"><strong>Email:</strong> <?php echo $lsT['email_cliente']; ?></div>
                                          </div>
                                          <br>
                                          <div class="row">
                                              <div class="col-sm-6"><strong>Departamento:</strong> <?php echo $lsT['departamento']; ?></div>
                                              <div class="col-sm-6"><strong>Asunto:</strong> <?php echo $lsT['asunto']; ?></div>
                                          </div>
                                          <br>
                                          <div class="row">
                                              <div class="col-sm-6"><strong>Problema:</strong> <?php echo $lsT['mensaje']; ?></div>
                                              <div class="col-sm-6"><strong>Estado:</strong> <?php echo $lsT['estado_ticket']; ?></div>
                                          </div>
                                          <br>
                                          <div class="row">
                                              <div class="col-sm-12"><strong>Solución:</strong> <?php echo $lsT['solucion']; ?></div>
                                          </div>
                                          <br>
                                          <div class="row">
                                              <div class="col-sm-12"><strong>Evaluación del Servicio:</strong> <?php if ($lsT['calificacion'] != null): echo $lsT['calificacion']; ?>
                                                <?php else: echo 'No has calificado este servicio'; ?>

                                              <?php endif ?></div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="panel-footer text-center">
                          <div class="row">
                              <h4>Opciones</h4>
                              <br class="hidden-lg hidden-md hidden-sm">
                              <div class="col-sm-6">
                                <?php if ($lsT['calificacion'] != null): ?>
                                  <span class="btn btn-success">Ya has calificado este servicio</span>
                                  <?php else: ?>
                                  <button class="btn btn-primary" data-toggle="modal" data-target="#modalCalificacion"><span class="glyphicon glyphicon-star"></span>&nbsp; Evaluar Servicio</button>

                                <?php endif ?>
                                <button id="save" class="btn btn-success" data-id="<?php echo $lsT['serie']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp; Guardar ticket en PDF</button>
                              </div>
                          </div>
                      </div>
                    </div>
              </div>
          </div>
        </div>
 <?php }else{ ?>
        <div class="container">
            <div class="row  animated fadeInDownBig">
                <div class="col-sm-4">
                    <img src="img/error.png" alt="Image" class="img-responsive"/><br>
                    <img src="img/SadTux.png" alt="Image" class="img-responsive"/>

                </div>
                <div class="col-sm-7 text-center">
                    <h1 class="text-danger">Lo sentimos ha ocurrido un error al hacer la consulta, esto se debe a lo siguiente:</h1>
                    <h3 class="text-warning"><i class="fa fa-check"></i> El Ticket ha sido eliminado completamente.</h3>
                    <h3 class="text-warning"><i class="fa fa-check"></i> Los datos ingresados no son correctos.</h3>
                    <br>
                    <h3 class="text-primary"> Por favor verifique que su <strong>id ticket</strong> y <strong>email</strong> sean correctos, e intente nuevamente.</h3>
                    <h4><a href="./index.php?view=soporte" class="btn btn-primary"><i class="fa fa-reply"></i> Regresar a soporte</a></h4>
                </div>
                <div class="col-sm-1">&nbsp;</div>
            </div>
        </div>
<?php } ?>

<!-- Modal -->
<div class="modal fade" id="modalCalificacion" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Calificación de Servicio Técnico</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="col-sm-6">
          <form action="" method="POST">
            <select class="form-control" name="optCalificacion">
              <option value="Excelente">Excelente</option>
              <option value="Muy Bueno">Muy Bueno</option>
              <option value="Bueno">Bueno</option>
              <option value="Regular">Regular</option>
              <option value="Malo">Malo</option>
            </select>
            <input type="text" value="<?php echo $lsT['serie']; ?>" name="del_ticket" hidden="">

        </div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary"><span class="glyphicon glyphicon-star"></span>&nbsp; Evaluar Servicio</button>
        </form>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>


<script>
  $(document).ready(function(){
    $("button#save").click(function (){
       window.open ("./lib/pdf_user.php?id="+$(this).attr("data-id"));
    });
  });
</script>
