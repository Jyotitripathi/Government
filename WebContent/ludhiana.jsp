
<%@page
   import="java.sql.*"
   import="javax.sql.*"%>
   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>

<form method="post">

<table border="3">
<tr>
<td>SERIAL NO.</td>
<td>CITY NAME</td>
<td>CERTIFICATE NAME</td>
<td>DISCRIPTION OF CERTIFICATE</td>
<td>LOCATION WHERE YOU CAN APPLY </td>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/tables";
String user="root";
String pass="";
String query="select * from certificates";
 
Connection conn=DriverManager.getConnection(url,user,pass);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr>
    <td><%=rs.getInt("CID") %></td>
    <td><%=rs.getString("CITYNAME") %></td>
    <td><%=rs.getString("CERTINAME") %></td>
    <td><%=rs.getString("ceridiscription") %></td>
    <td><%=rs.getString("certilocation") %></td>
</tr>
        <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</form>

</html>