using mercadopago;
using System.Collections;

public class MyClass {
	public static void Main () {
		MP mp = new MP("ACCESS_TOKEN");

		Hashtable payment = mp.post("/v1/payments", "{"+
			"\"transaction_amount\": 100,"+
			"\"description\": \"Title of what you are paying for\","+
			"\"payment_method_id\": \"TICKET_PAYMENT_METHOD_ID\","+
			"\"payer\": {"+
				"\"email\": \"test_user_19653727@testuser.com\""+
			"}"+
		"}");
	}
}


