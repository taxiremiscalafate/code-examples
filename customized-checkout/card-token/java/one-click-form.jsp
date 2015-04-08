<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mercadopago.MP"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.codehaus.jettison.json.JSONObject"%>
<%@page import="org.codehaus.jettison.json.JSONArray"%>

<%
MP mp = new MP ("ACCESS_TOKEN");

Map<String, Object> filters = new HashMap<String, Object> ();
filters.put("email", "your.payer@email");

JSONObject customer = mp.get ("/v1/customers/search", filters);

JSONArray cards = customer.getJSONObject("response").getJSONArray("cards");
%>
<li>
	<label>Payment Method:</label>
	<select id="cardId" name="cardId" data-checkout='cardId'>
	<% for (int i = 0; i < cards.size(); i++) { %>
		<option value="<%= cards[i].getInteger("id") %>" 
			first_six_digits="<%= cards[i].getString("first_six_digits") %>" 
			security_code_length="<%= cards[i].getJSONObject("security_code").getInteger("length") %>">
				<%= cards[i].getJSONObject("payment_method").getString ("name") %> ended in <%= cards[i].getString("last_four_digits") %>
		</option>
	<% } %>
	</select>
</li>
<li id="cvv">
	<label for="cvv">Security code:</label> 
	<input type="text"  id="cvv" data-checkout="securityCode" placeholder="123" />
</li>