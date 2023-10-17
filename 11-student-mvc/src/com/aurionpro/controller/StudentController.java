package com.aurionpro.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.aurionpro.jdbc.StudentDbUtil;
import com.aurionpro.model.Student;


/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	 @Resource(name="jdbc/student-source")
	    private DataSource dataSource;
	  private StudentDbUtil dbUtil;
	 
	     
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		dbUtil = new StudentDbUtil(dataSource);
	}

	/**
     * @see HttpServlet#HttpServlet()
     */
    public StudentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String command = request.getParameter("action");
		if(command==null) {
			command = "list";
		}
		switch(command) {
		case "list":
			try {
				listStudent(request,response);
			} catch (ServletException e2) {
				e2.printStackTrace();
			} catch (IOException e2) {
				e2.printStackTrace();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
			break;
		case "add":
			try {
				addStudent(request,response);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			break;
			
			case "update":
			try {
				getStudentForUpdate(request,response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
				break;
				
				
			case "update-save":
			try {
				updateStudent(request,response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	
	}
	

	private void updateStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		int id = Integer.parseInt(request.getParameter("id"));
		String fName = request.getParameter("firstName");
		String lName = request.getParameter("lastName");
		String email = request.getParameter("email");
		Student stud = new Student(id,fName , lName , email);
		dbUtil.updateStudent(stud);
		
	}

	private void getStudentForUpdate(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		Student student =  dbUtil.getStudentById(id);
		System.out.println(student);
		request.setAttribute("student",student);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/update-student.jsp");
		dispatcher.forward(request, response);
		  }
	

	private void addStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		String fName = request.getParameter("firstName");
		String lName = request.getParameter("lastName");
		String email = request.getParameter("email");
		Student stud = new Student(fName , lName , email);
		dbUtil.addNewStudent(stud);
		listStudent(request, response);
	}

	private void listStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		List<Student>allStudents = dbUtil.getAllStudents();
		request.setAttribute("allNewStudents",allStudents );
		dispatcher.forward(request, response);
		
	}

	

	


}
