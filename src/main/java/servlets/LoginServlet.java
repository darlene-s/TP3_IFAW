package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import persistant.Data;
import persistant.Personne;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		//redirection to the login page if the HasLoggedOut session attribute is null
		if(session.getAttribute("user") != null) 
			this.getServletContext().getRequestDispatcher("/affichage.jsp").forward(request, response);	
		else 
			this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        
		
		String login = request.getParameter("firstName");
		String password = request.getParameter("password");
		// A try catch block that allows to check that the user who 
		//tries to connect has entered credentials which exists in the database
		try {
			Personne u = Data.getInstance().getUser(login, password);
			
			if(u!=null) {
				session.setAttribute("user", u);
				ServletContext ctx = getServletContext();
				List<Personne> connectedUsers = null;
				
				if(ctx.getAttribute("connectedUsers")==null){
					connectedUsers = new ArrayList<Personne>();
				}
				else {
					connectedUsers = (List) ctx.getAttribute("connectedUsers");
				}
				
				connectedUsers.add(u);
				ctx.setAttribute("connectedUsers", connectedUsers);
		
				// Remove the session attribute error, because if the user session is different from null
				// then there is no connection issues
				if(session.getAttribute("error") != null) {
				     session.removeAttribute("error");
				 }
				//Redirection to the login page with a success message
				response.sendRedirect("/TP3_IFAW/AfficherContactServlet");
			}
			else {
				//Redirection to the login page with an error message, the error is due to wrong credentials
				response.sendRedirect("/TP3_IFAW/LoginServlet");	
				session.setAttribute("error","Invalid credentials, please try again");
			}
		} catch (Exception e) {
			response.sendRedirect("/TP3_IFAW/LoginServlet");
		}
	}

}
