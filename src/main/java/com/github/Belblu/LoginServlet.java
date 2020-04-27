package com.github.Belblu;

import com.google.gson.Gson;
import dao.DBUtils;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class LoginServlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        super.doGet(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("LOGINING");
        String login = request.getParameter("user");
        String pwd = request.getParameter("pwd");
        Map<String, Object> map = new HashMap<>();
        boolean isValid  = false;
        DBUtils dbUtils = new DBUtils();
        try {
            if(dbUtils.isTruePassword(login, pwd)){
                request.getRequestDispatcher("page.jsp").forward(request, response);
                isValid = true;
            } else {
                request.getRequestDispatcher("about.html").forward(request, response);
                isValid = false;
            }
            map.put("isValid", isValid);
        } catch (NoSuchFieldException e) {
            request.getRequestDispatcher("contactus.html").forward(request, response);
        }
        write(response, map);
    }

    private void write(HttpServletResponse response, Map<String, Object> map) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(map));
    }
}
