import mercadopago.MP;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP ("ACCESS_TOKEN");

		String payment = mp.get ("/v1/payments/[ID]");

		System.out.println(payment);
	}
}
