package uk.co.suecrossfield;
import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;

@SuppressWarnings("serial")
public class Sue_CrossfieldServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		

		UserService userService = UserServiceFactory.getUserService();
		User user = userService.getCurrentUser();
		resp.setContentType("text/plain");
		resp.getWriter().println("Hello, " + user);
	}
}
