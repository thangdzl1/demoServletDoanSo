import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import model.UserInputServlet;

@WebServlet(name = "leaderboardServlet", urlPatterns = "/leaderboard")
public class leaderboardServlet extends HttpServlet {
    public ArrayList<UserInputServlet> list = new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("main.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserInputServlet user = new UserInputServlet();
        user.setName(req.getParameter("user"));
        user.setCount(Integer.parseInt(req.getParameter("count")));
        list.add(user);
        Collections.sort(list, new Comparator<UserInputServlet>() {
            @Override
            public int compare(UserInputServlet o1, UserInputServlet o2) {
                return (o1.getCount()- o2.getCount());
            }
        });
        req.setAttribute("list",list);
        req.getRequestDispatcher("main.jsp").forward(req,resp);
    }
}
