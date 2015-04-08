using mercadopago;
using System;
using System.Collections;

public class MyClass {
	public static void Main () {
		MP mp = new MP("ACCESS_TOKEN");

		Dictionary<String, String> filters = new Dictionary<String, String> ();
		filters.Add("email", "your.payer@email");

		Hashtable customer = mp.get ("/v1/customers/search", filters);

		Console.WriteLine (customer.ToString());
	}
}
