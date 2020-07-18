package com.softserve.academy;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/list")
public class ListRecordsServlet extends HttpServlet {
    private AddressBook addressBook;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("sort") != null) {
            SortOrder sorting = SortOrder.valueOf(request.getParameter("sort").toUpperCase());
            addressBook.sortedBy(sorting);
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/list-records.jsp");
        request.setAttribute("records", addressBook);
        requestDispatcher.forward(request, response);
    }
}
