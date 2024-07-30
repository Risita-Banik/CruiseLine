/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package firstpack;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Registration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import oracle.jdbc.OracleConnection;
import oracle.jdbc.OraclePreparedStatement;


public class Login1 extends HttpServlet {

    String email,password;
    OracleConnection oconn;
    OraclePreparedStatement ost;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registration</title>");            
            out.println("</head>");
            out.println("<body>");
            email = request.getParameter("email");
           String email1;
            password = request.getParameter("password");
           
//            vGender = (vGender.equals("true"))?(vGender = "M"):(vGender = "F");
          
             //STEP 1 : REGISTERING OF THE REQUIRED DRIVER WITH THE JAVA PROGRAM
                //Class.forName("oracle.jdbc.OracleDriver");
                
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                
                 //STEP 2: INSTANTIATING THE CONNECTION OBJECT 
                oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl3","Risita","Banik");
                if(request.getParameter("log")!=null){
                 
                    
                        
                        //STEP 3: CREATING THE QUERY
                        String q="select * from users where email=?  and password=?";
                        //STEP 4: INSTANTIATING STATEMENT OBJECT FOR EXECUTING SQL QUERIES
                        ost =(OraclePreparedStatement) oconn.prepareStatement(q);
                        
                        //STEP 5: CHANGING THE DATE FORMAT FROM JAVA DATE  TO ORACLE DATE
                        
                        
                        //STEP 6: FILLING THE BLANK VALUES OF THE QUERY MARKED WITH ?
                        ost.setString(1,email);
                        ost.setString(2,password);
                        
                        
                        //STEP 7: EXECUTING THE QUERY
                        
                        int ra = ost.executeUpdate();
                        if(ra>0){
                            out.println("<h2>Rows affected is : " + ra + "</h2>");
                            out.println("<h2 style='color:green'>Login successfully.........</h2>");
                            response.sendRedirect("http://localhost:8080/cruise_booking_system/frontend/home.jsp?email1="+email);
                        }
                        else{
                            
                            response.sendRedirect("http://localhost:8080/MAJOR_PROJECT/frontend/loginback.html");
                        }
                    }
                         
                ost.close();
                oconn.close();
                
            out.println("</body>");
            out.println("</html>");
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}