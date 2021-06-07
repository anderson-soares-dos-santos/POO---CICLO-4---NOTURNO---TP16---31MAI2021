<%-- 
    Document   : users
    Created on : 7 de jun. de 2021, 08:23:44
    Author     : andersons
--%>

<%@page import="web.DbListener"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   String requestError = null;
   ArrayList<User> users = new ArrayList<>();
   try{
       users = User.getUsers();
       
   }catch(Exception ex) {
       requestError = ex.getMessage();
   }
    
   
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Início - MyFinance$$$  </title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"  %>
        <h2>Início</h2>
        <%if(requestError!=null){%>
        <div style="color:red"><%= requestError %></div>
            
        <%}%>
        <div>Página Inicial</div>
        <%for(User user:users){%>
        <div><%= user.getLogin() %></div>
        <%}%>
        
       
        
        
    <%@include file="WEB-INF/jspf/footer.jspf"  %>    
    </body>
</html>
