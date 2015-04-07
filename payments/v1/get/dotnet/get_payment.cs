using mercadopago;
using System;
using System.Collections;

public class MyClass {
	public static void Main () {
		MP mp = new MP("ACCESS_TOKEN");

		Hashtable payment = mp.get ("/v1/payments/[ID]");

		Console.WriteLine (payment.ToString());
	}
}
