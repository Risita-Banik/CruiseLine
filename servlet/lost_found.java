/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package firstpack;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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


public class lost_found extends HttpServlet {
        

    
    OracleConnection oconn;
    OraclePreparedStatement opst;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out.println("<h2>Rows affected is :");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registration</title>");            
            out.println("</head>");
            out.println("<body>");
           //op = request.getParameter("sub");
           String email = request.getParameter("email");
String phone = request.getParameter("phone");
String ship = request.getParameter("ship");
String sail_date = request.getParameter("sail_date");
String departure_port = request.getParameter("departure_port");
String location = request.getParameter("location");
String debark_port = request.getParameter("debark_port");
String debarkation_date = request.getParameter("debarkation_date");
String item_type = request.getParameter("item_type");
String item_description = request.getParameter("item_description");
String lost_date = request.getParameter("lost_date");
String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String country = request.getParameter("country");
String state = request.getParameter("state");
String address = request.getParameter("address");
String zip_code = request.getParameter("zip_code");
String city = request.getParameter("city");

           //if("Submit".equalsIgnoreCase(op)){
                //Class.forName("oracle.jdbc.OracleDriver");
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                
                 //STEP 2: INSTANTIATING THE CONNECTION OBJECT 
                oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");
                
                //STEP 3: CREATING THE QUERY
                String q = "INSERT INTO lost_found values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
                //STEP 4: INSTANTIATING STATEMENT OBJECT FOR EXECUTING SQL QUERIES
                opst =(OraclePreparedStatement) oconn.prepareStatement(q);
                
                
                //STEP 6: FILLING THE BLANK VALUES OF THE QUERY MARKED WITH ? 
                opst.setString(1,email);
opst.setString(2,phone);
opst.setString(3,ship);
opst.setString(4,sail_date);
opst.setString(5,departure_port);
opst.setString(6,location);
opst.setString(7,debark_port);
opst.setString(8,debarkation_date);
opst.setString(9,item_type);
opst.setString(10,item_description);
opst.setString(11,lost_date);
opst.setString(12,first_name);
opst.setString(13,last_name);
opst.setString(14,country);
opst.setString(15,state);
opst.setString(16,address);
opst.setString(17,zip_code);
opst.setString(18,city);
                //STEP 7: EXECUTING THE QUERY
                
                int ra = opst.executeUpdate();
                if(ra>0){
                            
//                response.sendRedirect("http://localhost:8080/MAJOR_PROJECT/frontend/home.jsp");
                        }
                        else{
                            
                response.sendRedirect("http://localhost:8080/MAJOR_PROJECT/frontend/lost_found.jsp");
                        }
                
                out.println("<h2>Rows affected is : " + ra + "</h2>");
                 out.println("<h2 style='color:green'>Data saved successfully.........</h2>");
                
                opst.close();
                oconn.close();
            } 
        catch (SQLException ex) {
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