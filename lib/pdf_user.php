<?php
require "./fpdf/fpdf.php";
include './class_mysql.php';
include './config.php';

$id = MysqlQuery::RequestGet('id');
$sql = Mysql::consulta("SELECT * FROM ticket WHERE serie= '$id'");
$reg = mysqli_fetch_array($sql, MYSQLI_ASSOC);

class PDF extends FPDF
{
}

$pdf=new PDF('P','mm','Letter');
$pdf->SetMargins(15,20);
$pdf->AliasNbPages();
$pdf->AddPage();

$pdf->SetTextColor(0,0,128);
$pdf->SetFillColor(77, 121, 255);//RGB COLOR
$pdf->SetDrawColor(0,0,0);
$pdf->SetFont("Arial","b",9);
$pdf->Image('../img/Grupo SID.JPG',15,13,-300);
$pdf->Cell (0,5,utf8_decode('Sistemas TI'),0,1,'C');
$pdf->Cell (0,5,utf8_decode('REPORTE'),0,1,'C');

$pdf->Ln();
$pdf->Ln();
$pdf->Ln();

$pdf->Cell (0,5,utf8_decode('Información de Ticket #'.utf8_decode($reg['serie'])),0,1,'C');

$pdf->Cell (35,10,'Fecha',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['fecha']),1,1,'L');
if ($reg["fechaCierre"] != null) {

$pdf->Cell (35,10,'Fecha de cierre',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['fechaCierre']),1,1,'L');	# code...
}
$pdf->Cell (35,10,'Serie',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['serie']),1,1,'L');
$pdf->Cell (35,10,'Estado',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['estado_ticket']),1,1,'L');
$pdf->Cell (35,10,'Nombre',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['nombre_usuario']),1,1,'L');
$pdf->Cell (35,10,'Email',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['email_cliente']),1,1,'L');
$pdf->Cell (35,10,'Departamento',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['departamento']),1,1,'L');
$pdf->Cell (35,10,'Asunto',1,0,'C',true);
$pdf->Cell (0,10,utf8_decode($reg['asunto']),1,1,'L');
/*$pdf->Cell (35,15,'Problema',1,0,'C',true);
$pdf->Cell (0,15,utf8_decode(utf8_decode($reg['mensaje'])),1,1,'L');*/
$pdf->Cell (35,15,utf8_decode('Evaluación de Servicio'),1,0,'C',true);
$pdf->Cell (0,15,utf8_decode($reg['calificacion']),1,1,'L');

$pdf->Ln();

$pdf->SetTextColor(245,064,033);
$pdf->Cell (0,5,utf8_decode('Problema'),0,0,'C');
$pdf->Ln();
$pdf->SetTextColor(0,0,128);
$pdf->SetFillColor(255, 255,255);//RGB COLOR
$pdf->MultiCell(0,4,utf8_decode($reg['mensaje']),0,1,'J');
$pdf->Ln();
$pdf->Cell (0,5,utf8_decode('Solución'),0,0,'C');
$pdf->Ln();
$pdf->SetTextColor(0,0,128);
$pdf->SetFillColor(255, 255,255);//RGB COLOR
$pdf->MultiCell(0,4,utf8_decode($reg['solucion']),0,1,'J');


$pdf->cell(0,5,"Sistemas TI".date("Y") ,0,0,'C');

$pdf->output();
