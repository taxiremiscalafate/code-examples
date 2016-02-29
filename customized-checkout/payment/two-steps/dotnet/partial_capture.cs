using mercadopago;
using System.Collections;

public class MyClass {
	public static void Main () {
		MP mp = new MP("ACCESS_TOKEN");

		Hashtable payment = mp.put("/v1/payments/PAYMENT_ID", "{"+
			"\"transaction_amount\": 75,"+
			"\"capture\": true"+
		"}");
	}
}
