import com.mercadopago.MP;

public class MyClass {
	public static void main (String args[]) {
		MP mp = new MP ("5404542076898748", "q79miN8S9AStGJQTLNV3PzQiM1GYb5d8");

		String accessToken = mp.getAccessToken();

		System.out.println(accessToken);
	}
}

