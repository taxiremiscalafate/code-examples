import mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP ("ACCESS_TOKEN");

		JSONObject card = mp.post ("/v1/customers/[CUSTOMER_ID]/cards", "{'token': 'ff8080814c11e237014c1ff593b57b4d'}");

		System.out.println(card.toString());
	}
}
