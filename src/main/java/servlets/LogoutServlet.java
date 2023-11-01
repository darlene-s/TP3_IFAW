package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import persistant.Personne;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession(false);
	    ServletContext ctx = getServletContext();
        if (session != null) {
        	List<Personne> connectedUsers = (List) ctx.getAttribute("connectedUsers");
        	for (int i = 0; i < connectedUsers.size(); i++) {
        		int id = ((Personne)session.getAttribute("user")).getId();
        		if(connectedUsers.get(i).getId()==id) {
        			connectedUsers.remove(i);
        		}
        	}
            session.removeAttribute("user");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/LoginServlet");
            dispatcher.forward(request, response);
        }
	}

}
