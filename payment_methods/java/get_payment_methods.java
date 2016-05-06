import com.mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP ("ACCESS_TOKEN");

		JSONObject paymentMethods = mp.get ("/v1/payment_methods");

		System.out.println(paymentMethods.toString());
	}
}
