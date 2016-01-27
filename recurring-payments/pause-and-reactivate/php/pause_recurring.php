<?php
require_once ('mercadopago.php');

$mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

$mp->update_preapproval_payment(":ID", {"status": "paused"});
?>