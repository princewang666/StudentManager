package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.StudentDao;
import entity.Student;

@WebServlet("/one_page_student")
public class one_page_student extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();

        String key = request.getParameter("key");

        if (key == null || key.equals("")) {
            int currentIndex, count, size = 10;
            String index = request.getParameter("index");
            if (index == null)
                index = "1";
            currentIndex = Integer.parseInt(index);

            try {
                StudentDao sdao = new StudentDao();
                ArrayList<Student> stus = sdao.getOnePage(currentIndex, size);
                count = sdao.getStudentCount();
                int sumIndex = count % size == 0 ? count / size : count / size + 1;
                session.setAttribute("onePageStudent", stus);
                session.setAttribute("sumIndex", sumIndex);
                response.sendRedirect("teacher/main.jsp");
            } catch (Exception e) {
                out.print(e);
            }
        }
        else {

            StudentDao studentD = new StudentDao();
            String pattern = "^\\d+";
            boolean isMatch = Pattern.matches(pattern, key);
            if (isMatch) {
                try {

                    Student student = studentD.findWithId(key);
                    ArrayList<Student> students = new ArrayList<>();
                    students.add(student);
                    session.setAttribute("onePageStudent", students);
                    session.setAttribute("sumIndex", 1);
                    response.sendRedirect("teacher/main.jsp");
                } catch (Exception e) {
                    out.print(e);
                }
            } else {
                try {
                    ArrayList<Student> stus = studentD.findWithName(key);
                    session.setAttribute("onePageStudent", stus);
                    session.setAttribute("sumIndex", 1);
                    response.sendRedirect("teacher/main.jsp");
                } catch (Exception e) {
                    out.print(e);
                }
            }
        }
    }
}
