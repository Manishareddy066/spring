<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <%@ page import="orm.dept05,java.util.*" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Departments List through Spring ORM</title>

</head>

 <BODY >

       <H1>Dept List from Spring ORM </H1>



      <TABLE BORDER="1">

      <TR>

      <TH>Dept No</TH>

      <TH>Dept Name</TH>

      <TH>Location</TH>

      </TR>

      <%
      List<dept05> dlist=(List<dept05>)request.getAttribute("dlist");

      		for(dept05 d:dlist){
      %>

      	<TR>

       		  <TD> <%= d.getDeptNo() %></td>

     		  <TD> <%= d.getDName() %></TD>

      		  <TD> <%= d.getLocation() %></TD>

      </TR>

      <% 

      	} 

      %>

     </TABLE>

     </BODY>

</html>