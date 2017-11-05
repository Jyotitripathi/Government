
<!--  
<%@page import="java.sql.*"%>
<%
String no=request.getParameter("count");  
 String buffer="<select name='CITY' ID='menu1'> <option value='-1'>Select</option>";  
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost/tables","root","");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select * from cityname  ");  
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString(1)+"'>"+rs.getString("CityName")+"</option>";  
   }  
    String selectedValue=request.getParameter("menu1");
out.println("Selected Value is: "+selectedValue);
%>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <html>
   <head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Insert title here</title>
   </head>
   
   <input type="submit" name="b1" value="GO" onclick=" location.href='ludhiana.jsp' ">
          
       
       </body>
   </html>
 <%
   
 buffer=buffer+"</select>";  
 response.getWriter().println(buffer);
 
 }
 catch(Exception e){
     System.out.println(e);
 }
 %>
 
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Drop Downlist</title>
</head>
<body>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/tables";%>
<%!String user = "root";%>
<%!String psw = "";%>
<form action="post">
<%
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql = "SELECT * FROM cityname";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
%> hjfdjhh
<select name="menu1" id='menu1'>
<%
while(rs.next()){
	   buffer=buffer+"<option value='"+rs.getString(1)+"'>"+rs.getString("CityName")+"</option>";  
	   }  
String selectedValue=request.getParameter("menu1");
out.println("Selected Value is: "+selectedValue);
%>
</select>

<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
</form>
</body>
</html>   