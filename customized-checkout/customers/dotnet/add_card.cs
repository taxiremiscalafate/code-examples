using mercadopago;
using System;
using System.Collections;

public class MyClass {
	public static void Main () {
		MP mp = new MP("ACCESS_TOKEN");

		Dictionary<String, String> filters = new Dictionary<String, String> ();
		filters.Add("email", "your.payer@email");

		Hashtable saved_customer = mp.get ("/v1/customers/search", filters);
		Integer customer_id = saved_customer["response"]["results"][0]["id"];

		Hashtable card = mp.post ("/v1/customers/"+customer_id+"/cards", "{\"token\": \"ff8080814c11e237014c1ff593b57b4d\"}");

		Console.WriteLine (card.ToString());
	}
}
