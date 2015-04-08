using mercadopago;
using System;
using System.Collections;

public class MyClass {
	public static void Main () {
		MP mp = new MP("ACCESS_TOKEN");

		Hashtable paymentMethods = mp.get ("/v1/payment_methods");

		Console.WriteLine (paymentMethods.ToString());
	}
}
