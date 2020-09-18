

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class BookingOrario
 */
@WebServlet("/BookingOrario")
public class BookingOrario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/green")
	private DataSource ds;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingOrario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servizio=request.getParameter("servizio");
		String day =request.getParameter("day");
		String m = request.getParameter("month");
		String y =request.getParameter("year");
		LocalDate d= LocalDate.of(Integer.parseInt(y),Integer.parseInt(m),Integer.parseInt(day));
		
		 try(BookingOrarioDao bd= new BookingOrarioDao(ds)){
			 //  request.setAttribute("listaOrari",bd.getData(servizio,  d));
			   
		   }
		   RequestDispatcher rd = request.getRequestDispatcher("booking.jsp");
			rd.forward(request, response);
	   }
		
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
