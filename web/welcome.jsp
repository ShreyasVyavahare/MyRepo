 <%-- 
    Document   : welcome
    Created on : 17-Jan-2022, 1:02:04 pm
    Author     : Shree
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
     
        <% 
            
        // response.setHeader is for preventing coming back from login page to welcome page after logout
        response.setHeader("Cache-control","no-cache,no-store,must-revalidate"); // for http 1.1
        
        response.setHeader("pragma", "no-cache"); //for old http versions 1.0
        response.setHeader("Expires", "0");//For Proxie servers
        
        //response.sendRedirect is used for redirecting to login page if not login.
        if(session.getAttribute("uname")== null)
        {
            response.sendRedirect("index.html");
        }
        %>
           Welcome !! you have Logged in successfully ${uname}
           <br/>
           
           <a href="videos.jsp">Videos</a>
           <br/>
           
           <form action="logout">
               <input type="submit" value="logout" >
           </form>
    </body>
</html>
