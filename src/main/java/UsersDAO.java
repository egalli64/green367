import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UsersDAO implements AutoCloseable {
	private static final Logger LOG = LoggerFactory.getLogger(UsersDAO.class);
	private Connection conn;

	public UsersDAO(DataSource ds) {
		LOG.trace("called");

		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public List<User> getAll() {
		LOG.trace("called");
		List<User> results = new ArrayList<>();

		try (Statement stmt = conn.createStatement(); //
				ResultSet rs = stmt.executeQuery("select username, password from users")) {
			while (rs.next()) {
				results.add(new User(rs.getInt("user_id"), rs.getString("user_name"), rs.getString("user_password")));
			}
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

		return results;
	}

	public User getUserByName(String userName) {
		LOG.trace("called");
		User result = new User();
		try (Statement stmt = conn.createStatement(); //
				ResultSet rs = stmt.executeQuery("select * from users where user_name = '"+userName+"'")) {
			while (rs.next()) {
				result = new User(rs.getInt("user_id"), rs.getString("user_name"), rs.getString("user_password"));
			}
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

		return result;
	}

	@Override
	public void close() throws IOException {
		try {
			conn.close();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}
}
