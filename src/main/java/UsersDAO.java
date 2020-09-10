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

	    public UsersDAO (DataSource ds) {
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
	                results.add(new User(rs.getString("USER_NAME"), rs.getString("PASSWORD")));
	            }
	        } catch (SQLException se) {
	            throw new IllegalStateException("Database issue " + se.getMessage());
	        }

	        return results;
	    }

	    public User getUserByName(String UserName) {
	        LOG.trace("called");

	        try (Statement stmt = conn.createStatement(); //
	                ResultSet rs = stmt.executeQuery("select username, password from users where username=" + UserName)) {
	            while (rs.next()) {
	                result= new User(rs.getString("username"), rs.getString("password")));
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




