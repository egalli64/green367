
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
		boolean wrongRegistration = true;
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
		try (PreparedStatement prpStmt = conn.prepareStatement("select user_name from users where user_name = ?",
				ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE)) {
			prpStmt.setString(1, username);
			ResultSet rs = prpStmt.executeQuery();
			if(!rs.first()) {
				wrongRegistration = false;
			}
		} catch (Exception e) {
			logger.warn("No connection in select " + e.getMessage());
		}
		if (!wrongRegistration) {
			try (Statement stmt = conn.createStatement()) {
				stmt.executeUpdate(
						"insert into users (user_name, user_password, user_cf, first_name, last_name, cap, user_email) "
								+ "values ('" + username + "','" + password + "','" + fiscalCode + "','" + name + "','"
								+ surname + "','" + cap + "','" + email + "')");
				logger.warn("QUERY SHOULD BE EXECUTED");
			} catch (Exception e) {
				logger.warn("Not correctly registered!");
			}
		} else {
			request.setAttribute("wrongRegistration", wrongRegistration);
		}
		RequestDispatcher rd = request.getRequestDispatcher(!wrongRegistration ? "index.jsp" : "register.jsp");
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
