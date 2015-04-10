using mercadopago;
using System;
using System.Collections;

public class MyClass {
	public static void Main () {
		MP mp = new MP("CLIENT_ID", "CLIENT_SECRET");

		Hashtable balance = mp.get ("/users/USER_ID/mercadopago_account/balance");

		Console.WriteLine (balance.ToString());
	}
}
