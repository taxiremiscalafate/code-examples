using mercadopago;
using System;
using System.Collections;

public class MyClass {
	public static void Main () {
		MP mp = new MP("ACCESS_TOKEN");

		Hashtable card = mp.post ("/v1/customers/[CUSTOMER_ID]/cards", "{'token': 'ff8080814c11e237014c1ff593b57b4d'}");

		Console.WriteLine (card.ToString());
	}
}
