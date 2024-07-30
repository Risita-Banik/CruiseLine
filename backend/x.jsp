<%@page import="oracle.jdbc.OracleResultSetMetaData"%>
<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OraclePreparedStatement"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
      <form action="pay.jsp" method="POST">
    <div class="modal-header" style="padding-top: 12px;padding-bottom:5px;">
        <h2>YOUR BOOKING DETAILS</h2>
      <span class="close">&times;</span>
      
    </div>
    <div class="modal-body" style="padding: 30px 50px;">
      <div class="row">
                <div class="col-md-8">
                    <label class="">YOUR NAME</label>
                    <input type="text" value="<%out.println(sess.getAttribute("name"));%>" readonly class="form-control">
                    <label class="pt-4">YOUR EMAIL ADDRESS</label>
                    <input type="text" value="<%out.println(sess.getAttribute("mail"));%>" readonly class="form-control">
                    <label class="pt-4">YOUR PHONE NUMBER</label>
                    <input type="text" class="form-control" placeholder="Enter your phone number" name="phone_no">
                    <label class="pt-4">SELECT THE NO OF PERSONS</label>
                    <input type="number" class="form-control" id="person" name="person">
                    <label class="pt-4">SELECT ROOM TYPE</label>
                    <select class="form-control" name="room" required>
                        <option value="">-----CHOOSE FROM HERE-----</option>
                        <option value="INSIDE">INSISDE</option>
                        <option value="OCEANVIEW">OCEANVIEW</option>
                        <option value="BALCONY">BALCONY</option>
                        <option value="CLUB BALCONY SUIT">CLUB BALCONY SUIT</option>
                        <option value="SUIT">SUIT</option>
                    </select>
                    
               </div>
<div class="col-md-4 design">
     <%!
            OraclePreparedStatement opst2;
             OracleConnection oconn2;
            OracleResultSet ors2; 
            OracleResultSetMetaData orsmd2;
            String q2,n,p1;
            %>
     <%
         p1=request.getParameter("px");
         DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
                oconn2 = (OracleConnection)DriverManager.getConnection("jdbc:oracle:thin:@LAPTOP-DBCR1I96:1521:ORCL","TECSECB","DATABASE");
               q2 = "select * from CRUISE_DETAILS where PACKAGE=?";
                opst2=(OraclePreparedStatement)oconn2.prepareStatement(q2);
                opst2.setString(1,p1);              
                ors2 = (OracleResultSet)opst2.executeQuery();
                orsmd2 = (OracleResultSetMetaData)ors2.getMetaData();
                
             %>  
            <table>
                    <tbody>
                    <%
                        
                        while(ors2.next())
                        {
                            n=ors2.getString(1);
                            for(int i = 1; i <= 7; i ++)
                            {
                        %>
                        <tr>
                        <th><%=orsmd2.getColumnName(i)%></th>
                        <td><%=ors2.getString(i)%></td></tr>
                        <%
                            }
                            %>
                
                <%
                    }
                %>
            </tbody>
        </table>
         </div>
       </div>
        
    </div>
    <div class="modal-footer">
      <input value="<%out.println(p);%>" name="final" type="text" hidden>
      <input type="submit" value="PROCEED" class="btn btn-secondary">
    </div>
      </form>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

