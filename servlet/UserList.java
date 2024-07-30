/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package firstpack;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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


public class UserList extends HttpServlet {
        

    String email,password,name,phone_no,dob,country,age,op,op1;
    
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
           op = request.getParameter("sub");
             email= request.getParameter("email");
            name = request.getParameter("name");
            phone_no = request.getParameter("phone_no");
            dob = request.getParameter("dob");
            country= request.getParameter("country");
            password = request.getParameter("password");
            //age = request.getParameter("age");
//            vGender = (vGender.equals("true"))?(vGender = "M"):(vGender = "F");
          
            if("Submit".equalsIgnoreCase(op)){
                //Class.forName("oracle.jdbc.OracleDriver");
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                
                 //STEP 2: INSTANTIATING THE CONNECTION OBJECT 
                oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@Risita_pc:1521:ORCL3","Risita","Banik");
                
                //STEP 3: CREATING THE QUERY
                String q = "INSERT INTO users(EMAIL,NAME,PHONE_NO,DOB,COUNTRY,PASSWORD) values(?,?,?,?,?,?)";
            
                //STEP 4: INSTANTIATING STATEMENT OBJECT FOR EXECUTING SQL QUERIES
                ost =(OraclePreparedStatement) oconn.prepareStatement(q);
                
                //STEP 5: CHANGING THE DATE FORMAT FROM JAVA DATE  TO ORACLE DATE
                SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd");
                Date date = dt.parse(dob);
                SimpleDateFormat dt1 = new SimpleDateFormat("dd-MMM-yyyy");
                dob = dt1.format(date);
                
                //STEP 6: FILLING THE BLANK VALUES OF THE QUERY MARKED WITH ? 
                ost.setString(1,email);
                ost.setString(2,name);
                ost.setString(3,phone_no);
                ost.setString(4,dob);
                ost.setString(5,country);
                ost.setString(6,password);
                
                
                
                //STEP 7: EXECUTING THE QUERY
                
                int ra = ost.executeUpdate();
                
                out.println("<h2>Rows affected is : " + ra + "</h2>");
                out.println("<h2 style='color:green'>Data saved successfully.........</h2>");
                response.sendRedirect("http://localhost:8080/cruise_booking_system/frontend/test.html");
                ost.close();
                oconn.close();
            }
            
         
            
         
        } catch (SQLException ex) {
            System.out.println(ex.toString());
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
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
    @Override
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
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}