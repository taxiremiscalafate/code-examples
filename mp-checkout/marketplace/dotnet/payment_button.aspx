<%@ Page Language="c#" %>
<%@ Import Namespace="mercadopago" %>
<%@ Import Namespace="System.Collections" %>

<%
	MP mp = new MP("SELLER_AT"); <%-- seller access_token --%>
	
	String preferenceData = "{\"items\":"+
		"[{"+
			"\"title\":\"Item title\","+
			"\"description\":\"Description\","+
			"\"quantity\":1,"+
			"\"unit_price\":50,"+
			"\"currency_id\":\"CURRENCY_ID\","+
			"\"picture_url\":\"https://www.mercadopago.com/org-img/MP3/home/logomp3.gif\""+
		"}],"+
		"\"marketplace_fee\":2.29"+ <%-- fee to collect --%>
	"}";

	Hashtable preference = mp.createPreference(preferenceData);    
%>
	
<!DOCTYPE html>
<html>
	<head>
		<title>Pay</title>
	</head>
	<body>
		<a href="<% Response.Write(preference["response"]["init_point"]); %>" name="MP-Checkout" class="blue-rn-m">Pay</a>
		<script type="text/javascript" src="https://www.mercadopago.com/org-img/jsapi/mptools/buttons/render.js"></script>
	</body>
</html>
