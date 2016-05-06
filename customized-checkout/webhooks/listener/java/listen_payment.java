import java.io.*;
import java.lang.StringBuilder;
import javax.servlet.*;
import javax.servlet.http.*;

import com.mercadopago.MP;

import org.codehaus.jettison.json.JSONObject;

public class ReceiveWebhook extends HttpServlet {
 
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuilder sb = new StringBuilder();
		BufferedReader br = request.getReader();
		String str;
		while( (str = br.readLine()) != null ){
			sb.append(str);
		}
		JSONObject event = new JSONObject(sb.toString());

		MP mp = new MP ("ACCESS_TOKEN");

		response.setStatus (200);
		response.getWriter().flush();

		if (event.getString("type") == "payment") {
			JSONObject paymentInfo = mp.get ("/v1/payments/"+event.getJSONObject("data").getString("id"));

			if (Integer.parseInt(paymentInfo.get("status").toString()) == 200) {
				out.print(paymentInfo.get("response"));
			}
		}
	}
}
