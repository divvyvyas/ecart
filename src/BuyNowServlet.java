
import com.instamojo.wrapper.api.*;
import com.instamojo.wrapper.exception.*;
import com.instamojo.wrapper.model.*;
import com.instamojo.wrapper.response.*;
import com.instamojo.wrapper.util.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BuyNowServlet")
public class BuyNowServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		ApiContext context = ApiContext.create("IpfGXgJhFemhbaBHy3FiUWPFXscy908F2rnNl9Ri", "LuihaBYtwbXSE583Tmwo6yrWS0JGOoYjPLaQxvnfffaHRMEd2pEjxpeizuTdhTPlP15QdCuHQfWGCnDpdtxEqtQcR06LkzUIW0UJYlSIel1vsuFIvBmiIBG83md8iYxv", ApiContext.Mode.TEST);
		Instamojo api = new InstamojoImpl(context);

		/*
		 * Create a new payment order
		 */
		PaymentOrder order = new PaymentOrder();
		order.setName("Divvy Vyas");
		order.setEmail("divvy.vyas99@gmail.com");
		order.setPhone("7389839103");
		order.setCurrency("INR");
		order.setAmount(90.0);
		order.setDescription("This is a test transaction.");
		order.setRedirectUrl("z.jsp");
		order.setWebhookUrl("http://www.someurl.com/");
		order.setTransactionId("dxg234");

		try {
		    PaymentOrderResponse paymentOrderResponse = api.createPaymentOrder(order);
		    out.println(paymentOrderResponse.getPaymentOrder().getStatus());

		} catch (Exception e) {
		    out.println(e);
		}
	}

}
