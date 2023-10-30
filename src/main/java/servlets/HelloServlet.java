package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*Ouvrir le descripteur de déploiement (fichier web.xml) et modifier l’url d’accès à la servlet
puis recompilez, redéployez sur le serveur et testez de nouveau votre site : Que constatez vous ?
-> On constate que l'URL d'accès à la servlet change aussi dynamiquement en fonction de ce qui est renseigné dans le fichier web.xml
-> Mais il est préférable d'utiliser @WebServlet("/...")
*/
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, java.io.IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			out.println("<html><body>Current time is: " + LocalDateTime.now() + ".</body></html>");
			out.close();
		}

		finally {
			out.close();
		}
	}
}