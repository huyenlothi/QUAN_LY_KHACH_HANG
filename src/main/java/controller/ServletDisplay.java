package controller;

import model.Customer;
import model.DBUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletDisplay", urlPatterns = "/display")
public class ServletDisplay extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> list = DBUtils.getList();
        request.setAttribute("show",list);
        RequestDispatcher dispatcher = request.getRequestDispatcher("show.jsp");
        dispatcher.forward(request,response);
    }
}
