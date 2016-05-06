import com.mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP("ACCESS_TOKEN");

		JSONObject payment = mp.post("/v1/payments", "{"+
			"'transaction_amount': 100,"+
			"'description': 'Title of what you are paying for',"+
			"'payment_method_id': 'TICKET_PAYMENT_METHOD_ID',"+
			"'payer': {"+
				"'email': 'test_user_19653727@testuser.com'"+
			"}"+
		"}");
	}
}
