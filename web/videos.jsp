<%-- 
    Document   : videos
    Created on : 17-Jan-2022, 5:20:44 pm
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
            
        response.setHeader("Cache-control","no-cache,no-store,must-revalidate"); // for http 1.1
        
        response.setHeader("pragma", "no-cache"); //for old http versions 1.0
        response.setHeader("Expires", "0");//For Proxie servers
        if(session.getAttribute("uname")== null)
        {
            response.sendRedirect("welcome.jsp");
        }
        %>
        <h1>Atharva Vyavahare Videos </h1>
        <iframe width="560" height="290" src="https://www.youtube.com/embed/swZWMevxGyo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <br>Atharva Video 1
    <br/>
    <iframe width="560" height="290" src="https://www.youtube.com/embed/g7hVpJznZno" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    <br> atharva Vid 2
    <form action="logout">
               <input type="submit" value="logout" >
           </form>
    </body>
</html>
