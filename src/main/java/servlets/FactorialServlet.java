package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FactorialServlet")
public class FactorialServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String valueStr = request.getParameter("factorial");

        try {
            int value = Integer.parseInt(valueStr);
            String result = FactorialCalculator.calculateFactorial(value);
            request.setAttribute("result", result);
            request.getRequestDispatcher("factorial.jsp").forward(request, response);
            request.removeAttribute("result");
        } catch (NumberFormatException e) {

            request.setAttribute("error", "Invalid input. Please enter a valid number.");
            request.getRequestDispatcher("form.jsp").forward(request, response);
        }
    }
}