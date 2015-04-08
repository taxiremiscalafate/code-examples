<?php
require_once ('mercadopago.php');

$mp = new MP ("ACCESS_TOKEN");

$filters = array ("email" => "your.payer@email");

$customer = $mp->get ("/v1/customers/search", $filters);
?>
<li>
	<label>Payment Method:</label>
	<select id="cardId" name="cardId" data-checkout='cardId'>
	<?php foreach ($customer["response"]["cards"] as $card) { ?>
		<option value="<?php echo $card["id"]; ?>" 
			first_six_digits="<?php echo $card["first_six_digits"]; ?>" 
			security_code_length="<?php echo $card["security_code"]["length"]; ?>">
				<?php echo $card["payment_method"]["name"]; ?> ended in <?php echo $card["last_four_digits"]; ?>
		</option>
	<?php } ?>
	</select>
</li>
<li id="cvv">
	<label for="cvv">Security code:</label> 
	<input type="text"  id="cvv" data-checkout="securityCode" placeholder="123" />
</li>