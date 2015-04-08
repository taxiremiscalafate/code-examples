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
	preference_obj("items")(Null)("title") = "Item title"
	preference_obj("items")(Null)("description") = "Description"
	preference_obj("items")(Null)("quantity") = 1
	preference_obj("items")(Null)("unit_price") = 50
	preference_obj("items")(Null)("currency_id") = "CURRENCY_ID"
	preference_obj("items")(Null)("picture_url") = "https://www.mercadopago.com/org-img/MP3/home/logomp3.gif"
	Set preference_obj("marketplace_fee") = 2.29 ' fee to collect

	preference_json =  preference_obj.jsString

	Dim mp
	Dim response
	Set mp = new Mercadopago
	
	mp.construct "SELLER_AT" ' seller access_token
	response = mp.create_preference(preference_json)

	Dim objJSON, preferenceResult 
	Set objJSON = JSON
	Set preferenceResult = objJSON.parse(join(array(response)))	
%>

		<a href="<% response.write preferenceResult.init_point %>">Pay</a>
	</body>
</html>