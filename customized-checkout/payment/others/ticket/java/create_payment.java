import mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

		JSONObject payment = mp.post("/v1/payments", "{"+
			"'transaction_amount': 100,"+
			"'description': 'Title of what you are paying for',"+
			"'payment_method_id': 'rapipago',"+
			"'payer': {"+
				"'email': 'test_user_19653727@testuser.com'"+
			"}"+
		"}");
	}
}
