import com.mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP ("ACCESS_TOKEN");

		Map<String, Object> filters = new HashMap<String, Object> ();
		filters.put("email", "your.payer@email");

		JSONObject saved_customer = mp.get ("/v1/customers/search", filters);
		Integer customer_id = saved_customer.getJSONObject("response").getJSONArray("results").get(0).getInt("id");

		JSONObject card = mp.post ("/v1/customers/"+customer_id+"/cards", "{'token': 'ff8080814c11e237014c1ff593b57b4d'}");

		System.out.println(card.toString());
	}
}
