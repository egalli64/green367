
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOG = LoggerFactory.getLogger(Login.class);
	@Resource(name = "jdbc/green")
	private DataSource ds;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)

			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String inputUsername = (String) request.getParameter("loginUsername");
		String inputPassword = (String) request.getParameter("loginPassword");
		LOG.warn("In input "+inputUsername);
		LOG.warn("In input password "+inputPassword);
		try (UsersDAO dao = new UsersDAO(ds)) {
			User user = new User(127001,"NoOne","Random");
			user = dao.getUserByName(inputUsername);
			LOG.warn("On database "+user.getUser_name());
			if(inputPassword.equals(user.getUser_pw())){
				session.setAttribute("correctLog", true);
				session.setAttribute("username", inputUsername);
			}
			else {
				session.setAttribute("correctLog", false);
			}
		} catch (Exception e) {
			LOG.error("Can't login: "+e.getMessage());
		}
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
