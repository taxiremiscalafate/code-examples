using mercadopago;
using System.Collections;

public class MyClass {
	public static void Main () {
		MP mp = new MP("ACCESS_TOKEN");

		Hashtable payment = mp.post("/v1/payments", "{"+
			"\"transaction_amount\": 100,"+
			"\"token\": \"ff8080814c11e237014c1ff593b57b4d\","+
			"\"description\": \"Title of what you are paying for\","+
			"\"payer\": {"+
				"\"email\": \"test_user_19653727@testuser.com\""+
			"},"+
			"\"installments\": 3,"+
			"\"payment_method_id\": \"master\","+
			"\"issuer_id\": 338"+
		"}");
	}
}


