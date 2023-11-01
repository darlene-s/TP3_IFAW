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
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("err") != null) {
		     session.removeAttribute("err");
		 }
		this.getServletContext().getRequestDispatcher("/contact.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String lastName = request.getParameter("lastName");
		String middleName = request.getParameter("middleName");
		String firstName = request.getParameter("firstName");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String password = request.getParameter("password");
		
		boolean contact = (request.getParameter("contact") != null) ? true : false;
		if(Personne.isStringOnlyAlphabet(lastName) == true 
		&& Personne.isStringOnlyAlphabet(firstName) == true
		&& Personne.isStringOnlyAlphabet(firstName) == true) {
			
			Data.getInstance().createUser
			(lastName,middleName,firstName,gender,
			email,phoneNumber,password,contact);
			
			Personne u = Data.getInstance().getUser(firstName, password);
			if(u!=null) {
				session.setAttribute("user", u);
			}
			
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
			
			response.sendRedirect("afficherContact.jsp");
			
			if(session.getAttribute("err") != null) {
			     session.removeAttribute("err");
			 }
		}

		else {
			session.setAttribute("err","Your first and last name must contain alphabetical characters only");
			response.sendRedirect("contact.jsp");
		}
		
	}

}
