package ovs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
        try (PrintWriter out = response.getWriter()) {
        	
           java.lang.String name = request.getParameter("name");
           java.lang.String voter_card_number = request.getParameter("voternumber");
           java.lang.String address = request.getParameter("address");
           java.lang.String dob = request.getParameter("dob");
           java.lang.String contact = request.getParameter("number");
           java.lang.String email = request.getParameter("email");
           
           
           DatabaseManager db = new DatabaseManager();
		   java.sql.Connection  con = db.getConnection();
		   
          PreparedStatement preparedStatement = con.prepareStatement("insert into registered_voters (name,mNumber,email,vCardNum,address,dob)values('"+name+"','"+contact+"','"+email+"','"+voter_card_number+"','"+address+"','"+dob+"')");
		  preparedStatement.executeUpdate();
		  response.sendRedirect("adminWelcome.jsp");
        
        } catch (SQLException ex) {
        	System.out.println(ex.getMessage());
        } 
	}

}