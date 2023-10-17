package com.aurionpro.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.aurionpro.model.Student;

public class StudentDbUtil {

	private DataSource dataSource;

	public StudentDbUtil(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void init() {
		// TODO Auto-generated method stub

	}

	public List<Student> getAllStudents() throws SQLException {
		List<Student> students = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet result = null;
		try {

			conn = dataSource.getConnection();
			String sql = "select * from student";
			stmt = conn.createStatement();
			result = stmt.executeQuery(sql);

			while (result.next()) {
				int id = result.getInt("id");
				String firstName = result.getString("first_name");
				String lastName = result.getString("last_name");
				String email = result.getString("email");
				students.add(new Student(id,firstName, lastName, email));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(conn,stmt,result);
		}
		return students;
	}

	private void close(Connection conn, Statement stmt, ResultSet result) throws SQLException {
		if(conn!=null) {
			conn.close();
		}
		if(stmt!=null) {
			conn.close();
		}
		if(result!=null) {
			result.close();
		}
		
	}

	public void addNewStudent(Student stud) throws SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			conn = dataSource.getConnection();
			String sql = "insert into student (first_name , last_name,email) value (?,?,?)";
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1,stud.getFirstName());
			stmt.setString(2,stud.getLastName());
			stmt.setString(3,stud.getEmail());
			stmt.execute();
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn,stmt,null);
		}
		
		
	}

	public Student getStudentById(int id) throws SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet result = null;
		Student tempStudent = null;
		
		try {

			conn = dataSource.getConnection();
			String sql = "select * from student where id=?";
			stmt = conn.prepareStatement(sql);
			result = stmt.executeQuery(sql);
			stmt.setInt(1,id);
			result = stmt.executeQuery();

			if (result.next()) {
				String firstName = result.getString("first_name");
				String lastName = result.getString("last_name");
				String email = result.getString("email");
				 tempStudent = new Student(id,firstName,lastName,email);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn,stmt,result);
		}
		return tempStudent;
	}

	public void updateStudent(Student stud) throws SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			conn = dataSource.getConnection();
			String sql = "update student set first_name = ? , last_name = ? , email=? , where id=?";
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1,stud.getFirstName());
			stmt.setString(2,stud.getLastName());
			stmt.setString(3,stud.getEmail());
			stmt.setInt(4,stud.getId());
			stmt.execute();
			
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn,stmt,null);
		}
		
	}

}
