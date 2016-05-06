import com.mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP ("ACCESS_TOKEN");

		JSONObject payment = mp.get ("/v1/payments/[ID]");

		System.out.println(payment.toString());
	}
}
