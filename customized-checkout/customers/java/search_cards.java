import com.mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;
import org.codehaus.jettison.json.JSONArray;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP ("ACCESS_TOKEN");

		JSONObject cards = mp.get ("/v1/customers/[CUSTOMER_ID]/cards");

		System.out.println(cards.getJSONObject("response").toString());
	}
}
