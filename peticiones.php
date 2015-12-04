<?php
date_default_timezone_set("America/Mexico_City");
$p = array(
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

$jsontext = "['peticiones':{";
foreach($p as $key => $value) {
    $jsontext .= "'".addslashes($key)."': '".addslashes($value)."',";
}
$jsontext = substr_replace($jsontext, '', -1); // to get rid of extra comma
$jsontext .= "}]";
print_r($jsontext);
?>