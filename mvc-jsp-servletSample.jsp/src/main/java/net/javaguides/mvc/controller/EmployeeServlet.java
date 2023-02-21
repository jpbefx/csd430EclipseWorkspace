package net.javaguides.mvc.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import net.javaguides.mvc.model.EmployeeService;

import java.io.IOException;

/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/employees")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private EmployeeService employeeService;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeServlet() {
        this.employeeService = new EmployeeService();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("employees", this.employeeService.getEmployees());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/employees.jsp");
		dispatcher.forward(request, response);
	}

}
