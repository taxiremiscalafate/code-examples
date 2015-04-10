using mercadopago;
using System;
using System.Collections;

public class MyClass {
	public static void Main () {
		MP mp = new MP("ACCESS_TOKEN");

		Hashtable cards = mp.get ("/v1/customers/[CUSTOMER_ID]/cards");

		Console.WriteLine (cards["response"].ToString());
	}
}
