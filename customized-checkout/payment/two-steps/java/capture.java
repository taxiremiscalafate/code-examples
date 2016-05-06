import com.mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP("ACCESS_TOKEN");

		JSONObject payment = mp.put("/v1/payments/PAYMENT_ID", "{"+
			"'capture': true"+
		"}");
	}
}
