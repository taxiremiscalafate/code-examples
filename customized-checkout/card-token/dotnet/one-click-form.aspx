<%@ Page Language="c#" %>
<%@ Import Namespace="mercadopago" %>
<%@ Import Namespace="System.Collections" %>

<%
MP mp = new MP("ACCESS_TOKEN");

Dictionary<String, String> filters = new Dictionary<String, String> ();
filters.Add("email", "your.payer@email");

Hashtable customer = mp.get ("/v1/customers/search", filters);
%>
<li>
	<label>Payment Method:</label>
	<select id="cardId" name="cardId" data-checkout='cardId'>
	<% foreach(Hashtable card in customer["response"]["cards"] ) { %>
		<option value="<%: card["id"]; %>" 
			first_six_digits="<%: card["first_six_digits"]; %>" 
			security_code_length="<%: card["security_code"]["length"]; %>">
				<%: card["payment_method"]["name"]; %> ended in <%: card["last_four_digits"]; %>
		</option>
	<% } %>
	</select>
</li>
<li id="cvv">
	<label for="cvv">Security code:</label> 
	<input type="text"  id="cvv" data-checkout="securityCode" placeholder="123" />
</li>