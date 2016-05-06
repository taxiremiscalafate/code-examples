import com.mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP ("ACCESS_TOKEN");

		JSONObject customer = mp.post ("/v1/customers", "{'email': 'test@test.com'}");

		System.out.println(customer.toString());
	}
}
