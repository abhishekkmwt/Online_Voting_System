package ovs;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class voterLogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String voternum = request.getParameter("voterNumber");
        // we have to check if user existing or not and if he voted or not as well
        
        DatabaseManager db = new DatabaseManager();
		java.sql.Connection  con = db.getConnection();
        
        
        try {
        	
		   PreparedStatement preparedStatement1 = con.prepareStatement("select voter_card_number from temp_vc_number where voter_card_number = '"+voternum+"'");
           ResultSet rs1= preparedStatement1.executeQuery("select voter_card_number from temp_vc_number where voter_card_number = '"+voternum+"'");
           
           if(rs1.next())
           {
        	   
           response.sendRedirect("votercheck.jsp");
           out.println("You already voted........"+rs1.getString("voter_card_number"));
           }else
           {
        	PreparedStatement preparedStatement2 = con.prepareStatement("select vid, mNumber from registered_voters where vCardNum = '"+voternum+"'");
            ResultSet rs =   preparedStatement2.executeQuery("select vid,mNumber from registered_voters where vCardNum = '"+voternum+"'");
            if(rs.next()){
                String contact = rs.getString("mNumber");
                response.sendRedirect("userWelcome.jsp?con="+contact);
                out.println(contact);
                System.out.println(contact);
            }else{
                out.println("Please enter valid card number OR Voter Not Registered");
            }
           }
        } catch (SQLException ex) {
           
        }
        out.println(voternum);
	}

}