import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "mainServlet", urlPatterns = "/main")
public class mainServlet extends HttpServlet {
    public int randNum = (int) (Math.random()*1000)+1;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("main.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String message="";
        int input = Integer.parseInt(req.getParameter("input"));
        if (input==randNum) message = "Số vừa đoán chính xác!";
        else if (input<randNum) message = "Số vừa đoán nhỏ hơn đáp án!";
        if (input>randNum) message = "Số vừa đoán lớn hơn đáp án!";
        req.setAttribute("msg",message);

        req.getRequestDispatcher("main.jsp").forward(req,resp);
    }
}
