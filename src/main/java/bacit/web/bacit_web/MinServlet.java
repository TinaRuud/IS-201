package bacit.web.bacit_web;

import java.io.*;

import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "MinServlet", value = "/Min-servlet")
public class MinServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        // Hello
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("<h1>Get someone from the database :-)</h1>");
        out.println("<form action='GetUserServletOwn' method='POST'>");
        out.println("  <label for='uname'>First name:</label>");
        out.println("  <input type='text' name='uname'/>");
        out.println("  <input type='submit' />");
        out.println("</form>");
        out.println("</body></html>");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
    }

    public void destroy() {
    }
}