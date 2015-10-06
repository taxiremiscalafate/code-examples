using mercadopago;
using System;
using System.Collections;

public class MyClass {
	public static void Main () {
		MP mp = new MP("ACCESS_TOKEN");

		Hashtable customer = mp.post ("/v1/customers", "{\"email\": \"test@test.com\"}");

		Console.WriteLine (customer.ToString());
	}
}
