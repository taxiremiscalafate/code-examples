<?php
require_once "mercadopago.php";

$mp = new MP("ACCESS_TOKEN");

$json_event = file_get_contents('php://input', true);
$event = json_decode($json_event);

if ($event->type == 'payment'){
    $payment_info = $mp->get('/v1/payments/'.$event->data->id);

    if ($payment_info["status"] == 200) {
        print_r($payment_info["response"]);
    }
}
?>