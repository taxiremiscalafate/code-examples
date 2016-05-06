import com.mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

		JSONObject balance = mp.get ("/users/USER_ID/mercadopago_account/balance");

		System.out.println(balance.toString());
	}
}
