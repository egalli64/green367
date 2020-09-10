
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {

	private static Logger logger = LoggerFactory.getLogger(Registration.class);
	private static final long serialVersionUID = 1L;
	private static final String INSERT = "insert into users (user_name, user_password, user_cf, first_name, last_name, cap, user_email) values (?,?,?,?,?,?,?)";
	private Connection conn;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int user = request.getParameter("user");
		String pw = request.getParameter("password");
		String cf = request.getParameter("cf");
		String fname = request.getParameter("first_name");
		String lname = request.getParameter("last_name");
		int cap = request.getParameter("cap");
		String email = request.getParameter("email");

		try {

			DataSource ds;
			logger.trace("called");
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

		Statement ps = conn.prepareStatement();
		ps.set(1, user);
		ps.set(2, pw);
		ps.set(3, cf);
		ps.set(4, fname);
		ps.set(5, lname);
		ps.set(6, cap);
		ps.set(7, email);
		ps.executeUpdate("INSERT");
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}
}
