import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class BookingDao implements AutoCloseable {

	private Connection conn;

	public BookingDao(DataSource ds) {
		// LOG.trace("called");
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}
	public List<String> getServizi(int id){
		List<String> listaServizi= new ArrayList<String>();
		String query= "select e.exam_name "
				+"from exams as e join exam_hospitals as eh using(exam_id) "
				+"join hospitals as h using (hospital_id) where hospital_id=?";
		try(PreparedStatement st= conn.prepareStatement(query)){
			st.setInt(1, id);
			ResultSet rs=st.executeQuery();
			while(rs.next()) {
				listaServizi.add((rs.getString("EXAM_NAME")));
				
				
			}
			
		}catch(SQLException ex) {
			
		}
		
		
		return listaServizi;
	}
		
		

	public void close() throws IOException {
		try {
			conn.close();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

}
