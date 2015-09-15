<!--#include file="lib/mercadopago.asp"-->
<!--#include file="lib/JSON_2.0.4.asp"-->
<!--#include file="lib/json2.asp"-->

<html>
	<head>
		<title>Pay</title>
	</head>
	<body>

<%	
	Dim preference_obj
	Dim preference_json
	Set preference_obj = jsObject()
	Set preference_obj("items") = jsArray()
	Set preference_obj("items")(Null) = jsObject()
	preference_obj("items")(Null)("title") = "Multicolor kite"
	preference_obj("items")(Null)("quantity") = 1
	preference_obj("items")(Null)("currency_id") = "CURRENCY_ID" ' Available currencies at: https://api.mercadopago.com/currencies
	preference_obj("items")(Null)("unit_price") = 10.0

	Set preference_obj("shipments") = jsObject()
	preference_obj("shipments")("mode") = "me2"
	preference_obj("shipments")("dimensions") = "30x30x30,500"
	preference_obj("shipments")("local_pickup") = true
	Set preference_obj("shipments")("free_methods") = jsArray()
	Set preference_obj("shipments")("free_methods")(Null) = jsObject()
	preference_obj("shipments")("free_methods")(Null)("id") = SHIPPING_METHOD_ID
	preference_obj("shipments")("default_shipping_method") = SHIPPING_METHOD_ID
	preference_obj("shipments")("zip_code") = "ZIP_CODE"

	preference_json =  preference_obj.jsString

	Dim mp
	Dim response
	Set mp = new Mercadopago
	
	mp.construct "CLIENT_ID", "CLIENT_SECRET"
	response = mp.create_preference(preference_json)

	Dim objJSON, preferenceResult 
	Set objJSON = JSON
	Set preferenceResult = objJSON.parse(join(array(response)))	
%>

		<a href="<% response.write preferenceResult.init_point %>">Pay</a>
	</body>
</html>
