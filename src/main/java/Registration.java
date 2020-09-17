
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
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

@WebServlet("/registrationForm")

public class Registration extends HttpServlet {
	private static final String INSERT = "insert into users (user_name, user_password, user_cf, first_name, last_name, cap, user_email) values (?,?,?,?,?,?,?)";
	private static Logger logger = LoggerFactory.getLogger(Registration.class);
	private static final long serialVersionUID = 1L;
	private Connection conn;
	@Resource(name = "jdbc/green")
	private DataSource ds;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("firstName");
		String surname = request.getParameter("surname");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String fiscalCode = request.getParameter("fiscalCode");
		int cap = Integer.parseInt(request.getParameter("cap"));
		String password = request.getParameter("password");
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
		//           DA FARE TRY WITH RESOURCES!!!!!
		try { 
			Statement stmt = conn.createStatement();
				stmt.executeUpdate(
						"insert into users (user_name, user_password, user_cf, first_name, last_name, cap, user_email) "
						+ "values ('"+username+"','"+password+"','"+fiscalCode+"','"+name+"','"+surname+"','"+cap+"','"+email+"')");
				conn.close();
				stmt.close();
				logger.warn("QUERY SHOULD BE EXECUTED");
		} catch (Exception e) {

		}
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}

/*
 * try { this.conn = ds.getConnection(); } catch (SQLException se) { throw new
 * IllegalStateException("Database issue " + se.getMessage()); }
 */
