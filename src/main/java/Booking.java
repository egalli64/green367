

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Booking
 */
@WebServlet("/booking")
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
	           mappa.put("1", "OSPEDALE DI VIZZOLO PREDABISSI");
	           mappa.put("2","OSPEDALE BOLOGNINI - SERIATE");
	           mappa.put("3","OSPEDALE SERBELLONI - GORGONZOLA");
	           mappa.put("4","OSPEDALE CROTTA OLTROCCHI-VAPRIO D'ADDA");
	           mappa.put("5","OSP. GENERALE PROVINCIALE - SARONNO");
	           mappa.put("6","OSPEDALE PESENTI FENAROLI - ALZANO L.");
	           mappa.put("7","PRESIDIO OSPEDALIERO DI ROVATO");
	           mappa.put("8","OSPEDALE S. MARIA DELLE STELLE MELZO");
	           mappa.put("9","OSPEDALE UBOLDO - CERNUSCO S/NAVIGLIO");
	           mappa.put("10","OSPEDALE S. PAOLO - MILANO");
	           for(Integer i=1; i<=mappa.size();i++) {
	        	   String id= request.getParameter(i.toString());
	        	   
	        	   if(id!=null) {
	        		   i=mappa.size();
	        		   String ospedaleName= mappa.get(id);
	        		   request.setAttribute("osp", ospedaleName);
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
