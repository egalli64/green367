import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class BookingOrarioDao implements AutoCloseable {
	private Connection conn;

	public BookingOrarioDao(DataSource ds) {
		// LOG.trace("called");
		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}
	public List<String> getOrario(){
		List<String> orari= new ArrayList<String>();
		String query="select time_real from times";
		try {
		Statement st= conn.createStatement();
		ResultSet rs=st.executeQuery(query);
		while(rs.next()) {
			orari.add(rs.getString("TIME_REAL"));
		}
		}catch(SQLException ex) {
			
		}
		return orari;
		
	}
	public List<String> getData(String servizio, Date d){
		String query="select time_real from booking join exam_hospital "
				+"using(coupled_id) join exams using (exam_id) join times using(time_id) "
				+" where exam_name= ? && booking_date=?";
		List<String> orariOcc= new ArrayList<String>();
		List<String> orariDisp= getOrario();
		try(PreparedStatement st= conn.prepareStatement(query)){
			st.setString(1, servizio);
			st.setDate(2, d);
			ResultSet rs= st.executeQuery(); 
			while(rs.next()) {
				orariOcc.add(rs.getString("TIMES_REAL"));
				
			}
			if(orariOcc.size()==orariDisp.size()) {
				return orariDisp=null;
			}else {
				
				for(int i=0; i<orariDisp.size(); i++) {
					for(int j=0; j<orariOcc.size(); j++) {
					if(orariDisp.get(i).equals(orariOcc.get(j))) {
						orariDisp.remove(i);
					}
				}
					}
				
			}
			
		}catch(SQLException ex) {
			
		}
		return orariDisp;
		
	}
	public void close() throws IOException {
		try {
			conn.close();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}
	

}
