package sis.twilio.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TwilioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TwilioServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String body = request.getParameter("body");
		System.out.println("body must be this!!Hah i don't really know\n>>\n"+body);
	}

}
