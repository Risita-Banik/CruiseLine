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


public class vacation_idea extends HttpServlet {
        

    String nm,ct,cn,ph,email,ad,noa,tm,ty,pde,pdu,noc,com,noch,pda,pdp,pc,pca;
    
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
           nm=request.getParameter("name");        
           ct=request.getParameter("city");
           cn=request.getParameter("country");
           ph=request.getParameter("ph_no");
           email=request.getParameter("email");
           ad=request.getParameter("address");
           noa=request.getParameter("no_of_adults");
           tm=request.getParameter("travel_month");
           ty=request.getParameter("travel_year");
           pde=request.getParameter("pref_destination");
           pdu=request.getParameter("pref_duration");
           noc=request.getParameter("no_of_cabins");
           com=request.getParameter("comment");
           noch=request.getParameter("no_of_children");
           pda=request.getParameter("pref_dates");
           pdp=request.getParameter("pref_departure_port");
           pc=request.getParameter("pref_cruiseliner");
           pca=request.getParameter("pref_cabin");

           //if("Submit".equalsIgnoreCase(op)){
                //Class.forName("oracle.jdbc.OracleDriver");
                DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                
                 //STEP 2: INSTANTIATING THE CONNECTION OBJECT 
                oconn = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");
                
                //STEP 3: CREATING THE QUERY
                String q = "INSERT INTO vacation values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            
                //STEP 4: INSTANTIATING STATEMENT OBJECT FOR EXECUTING SQL QUERIES
                opst =(OraclePreparedStatement) oconn.prepareStatement(q);
                
                
                //STEP 6: FILLING THE BLANK VALUES OF THE QUERY MARKED WITH ? 
                opst.setString(1,nm);
                opst.setString(2,ct);
                opst.setString(3,cn);
                opst.setString(4,ph);
                opst.setString(5,email);
                opst.setString(6,ad);
                opst.setString(7,noa);
                opst.setString(8,tm);
                opst.setString(9,ty);
                opst.setString(10,pde);
                opst.setString(11,pdu);
                opst.setString(12,noc);
                opst.setString(13,com);
                opst.setString(14,noch);
                opst.setString(15,pda);
                opst.setString(16,pdp);
                opst.setString(17,pc);
                opst.setString(18,pca);
                //STEP 7: EXECUTING THE QUERY
                
                int ra = opst.executeUpdate();
                if(ra>0){
                            
               response.sendRedirect("http://localhost:8080/MAJOR_PROJECT/frontend/home.jsp");
                        }
                        else{
                            
                response.sendRedirect("http://localhost:8080/MAJOR_PROJECT/frontend/plan.jsp");
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