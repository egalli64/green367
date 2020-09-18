

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class Booking
 */
@WebServlet("/booking")
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/green")
	private DataSource ds;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Booking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	           Map<String, String> mappa= new HashMap<String,String>();
	           mappa.put("100", "OSPEDALE DI VIZZOLO PEDRABISSI");
	           mappa.put("102","OSPEDALE BOLOGNINI - SERIATE");
	           mappa.put("103","OSPEDALE SERBELLONI - GORGONZOLA");
	           mappa.put("104","OSPEDALE CROTTA OLTROCCHI-VAPRIO D ADDA");
	           mappa.put("105","OSP. GENERALE PROVINCIALE - SARONNO");
	           mappa.put("106","OSPEDALE PESENTI FENAROLI - ALZANO L.");
	           mappa.put("107","PRESIDIO OSPEDALIERO DI ROVATO");
	           mappa.put("108","OSPEDALE S. MARIA DELLE STELLE MELZO");
	           mappa.put("109","OSPEDALE UBOLDO - CERNUSCO S/NAVIGLIO");
	           mappa.put("10","OSPEDALE S. PAOLO - MILANO");
	           for(Integer i=1; i<=mappa.size();i++) {
	        	   String id= request.getParameter(i.toString());
	        	   
	        	   if(id!=null) {
	        		   i=mappa.size();
	        		   String ospedaleName= mappa.get(id);
	        		   request.setAttribute("osp", ospedaleName);
	        		   try(BookingDao bd= new BookingDao(ds)){
	        			   request.setAttribute("listaServizi",bd.getServizi(Integer.parseInt(id)));
	        			   
	        		   }
	        		   RequestDispatcher rd = request.getRequestDispatcher("booking.jsp");
	   				rd.forward(request, response);
	        	   }
	           }
	         
	           
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
