



import lp.dao.LoginDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "loginServlet1", urlPatterns = {"/loginServlet1"})
public class loginServlet1 extends HttpServlet {
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        
        LoginDao dao;
        dao = new LoginDao();
        
        if(dao.check(uname, pass)){
            HttpSession session =request.getSession();
            session.setAttribute("uname", uname);
            
            response.sendRedirect("welcome.jsp");
        
        
        }
        else{
            response.sendRedirect("index.html");
        }
    }

    

}
