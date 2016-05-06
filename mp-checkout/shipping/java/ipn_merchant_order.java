import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.mercadopago.MP;

import org.codehaus.jettison.json.JSONObject;

public class ReceiveFeed extends HttpServlet {
 
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

        String topic = request.getParameter("topic");
        JSONObject merchantOrderInfo = null;

        if (topic == "payment") {
            JSONObject paymentInfo = mp.get ("/collections/notifications/"+request.getParameter["id"]);
            merchantOrderInfo = mp.get ("/merchant_orders/"+paymentInfo.getJSONObject("response").getJSONObject("collection").getInt("merchant_order_id"));
        } else if (topic == "merchant_order") {
            merchantOrderInfo = mp.get ("/merchant_orders/"+request.getParameter["id"]);
        }

        if (merchantOrderInfo == null) {
            throw new Exception ("Error obtaining the merchant_order");
        }

        if (parseInt(paymentInfo.getInt("status") == 200) {
            out.print(merchantOrderInfo.getJSONObject("response").getJSONObject("payments"));
            out.print(merchantOrderInfo.getJSONObject("response").getJSONObject("shipments"));
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
