import com.mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP ("ACCESS_TOKEN");

		Map<String, Object> filters = new HashMap<String, Object> ();
		filters.put("email", "your.payer@email");

		JSONObject customer = mp.get ("/v1/customers/search", filters);

		System.out.println(customer.toString());
	}
}
