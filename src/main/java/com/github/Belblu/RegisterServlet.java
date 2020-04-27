package com.github.Belblu;

import com.google.gson.Gson;
import dao.DBUtils;
import dao.User;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class RegisterServlet extends HttpServlet {
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
        System.out.println("Registration");
            String login = request.getParameter("user");
            String pwd = request.getParameter("pwd");
            User user = new User(login, pwd);
            DBUtils dbUtils = new DBUtils();
            dbUtils.addUser(user);
            request.getRequestDispatcher("index.jsp").forward(request, response);
            Map<String, Object> map = new HashMap<>();
            map.put("isValid", true);
            //write(response, map);
    }
    private void write(HttpServletResponse response, Map<String, Object> map) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(map));
    }
}
