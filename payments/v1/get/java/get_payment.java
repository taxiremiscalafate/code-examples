import com.mercadopago.MP;
import org.codehaus.jettison.json.JSONObject;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP (TEST-5404542076898748-072217-ce2b67a1372f4319ec9ec436012700de__LD_LB__-180292097);

		JSONObject payment = mp.get ("/v1/payments/[ID]");

		System.out.println(payment.toString());
	}
}
