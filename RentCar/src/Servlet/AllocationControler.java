package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Allocation;

import service.AllocateDAO;
import service.AllocateDAOimpl;


/**
 * Servlet implementation class AllocationControler
 */
@WebServlet("/AllocationControler")
public class AllocationControler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	RequestDispatcher dispatcher = null;
	AllocateDAO bookDAO = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllocationControler() {
        
    	bookDAO = new AllocateDAOimpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action == null) {
			action = "LIST";
		}
		
		switch(action) {
			
			case "LIST":
				listEvent(request, response);
				break;
				
			case "EDIT":
				getSingleEvent(request, response);
				break;
				
			case "DELETE":
				deleteEvent(request, response);
				break;
				
			
				
			default:
				listEvent(request, response);
				break;
				
		}
	}
	
	// delete event
	private void deleteEvent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String allocationid = request.getParameter("allocationid");
		
			if(bookDAO.delete(Integer.parseInt(allocationid))) {
				request.setAttribute("NOTIFICATION", "Reservation Deleted Successfully!");
			}
			
			listEvent(request, response);
		}
	//get single record of an event
	private void getSingleEvent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String allocationid = request.getParameter("allocationid");
		
		Allocation theEvent = bookDAO.get(Integer.parseInt(allocationid));
		
		request.setAttribute("event1", theEvent);
		
		dispatcher = request.getRequestDispatcher("/work1.jsp");
		
		dispatcher.forward(request, response);
	}
	

	
	

	//list all event 
	private void listEvent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Allocation> theList = bookDAO.get();
		
		request.setAttribute("list", theList);
		
		dispatcher = request.getRequestDispatcher("/dashjsp.jsp");
		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		String allocationid = request.getParameter("allocationid");
		
		Allocation e = new Allocation();
		e.setBookid(Integer.parseInt(request.getParameter("bookid")));
		e.setPickuplocation(request.getParameter("pickuplocation"));
		e.setPickupdate(request.getParameter("pickupdate"));
		e.setPickuptime(request.getParameter("pickuptime"));
		e.setReturndate(request.getParameter("returndate"));
		e.setNoofdays(Integer.parseInt(request.getParameter("noofdays")));
		e.setNoofperson(Integer.parseInt(request.getParameter("noofperson")));
		e.setDriverid(Integer.parseInt(request.getParameter("driverid")));
		
		
		if(allocationid.isEmpty() || allocationid == null) {
			
			if(bookDAO.save(e)) {
				request.setAttribute("NOTIFICATION", "Allocation Saved Successfully!");
			}
		
		}else {
			
			e.setBookid(Integer.parseInt(allocationid));
			if(bookDAO.update(e)) {
				request.setAttribute("NOTIFICATION", "Allocation updated succesfully !");
			}
			
		}
		
		listEvent(request, response);
	}
	}


