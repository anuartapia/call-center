<?php
date_default_timezone_set("America/Mexico_City");
$p1 = array(
      "cliente" => "Jessi Jaime",
      "telefono" => 0123456789,
      "fecha" => date('ymd'),
      "imagenMapa" => "https://cbtelevision.com.mx/wp-content/uploads/2015/06/619.jpg",
      "calleOrigen" => "16 de Septiembre",
      "numeroOrigen" => "15A",
      "coloniaOrigen" => "Tepepan",
      "delegacionOrigen" => "Xochimilco",
      "calleDestino" => "Grimmauld Place",
      "numeroDestino" => "12",
      "coloniaDestino" => "London",
      "delegacionDestino" => "UK",
      "cancelada" => false,
      "atendida" => false
      );
$p2 = array(
      "cliente" => "Zaide Aguilar",
      "telefono" => 9876543210,
      "fecha" => date('ymd'),
      "imagenMapa" => "https://cbtelevision.com.mx/wp-content/uploads/2015/06/619.jpg",
      "calleOrigen" => "Grimmauld Place",
      "numeroOrigen" => "12",
      "coloniaOrigen" => "London",
      "delegacionOrigen" => "UK",
      "calleDestino" => "16 de Septiembre",
      "numeroDestino" => "15A",
      "coloniaDestino" => "Tepepan",
      "delegacionDestino" => "Xochimilco",
      "cancelada" => false,
      "atendida" => false
      );
/*
$jsontext = "['peticiones':{";
foreach($p as $key => $value) {
    $jsontext .= "'".addslashes($key)."': '".addslashes($value)."',";
}
$jsontext = substr_replace($jsontext, '', -1); // to get rid of extra comma
$jsontext .= "}]";
print_r($jsontext);
*/
$peticiones = array($p1,$p2);
$response = array("peticiones" => $peticiones);
header('Content-Type: application/json');
echo json_encode($response);
?>