package com.softserve.academy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/read")
public class ReadRecordServlet extends HttpServlet {
    private AddressBook addressBook;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String address = addressBook.read(firstName, lastName);
        if (address != null) {
            request.setAttribute("record", new String[]{firstName, lastName, address});
            request.getRequestDispatcher("/WEB-INF/read-record.jsp").forward(request, response);
        } else {
            request.setAttribute("person", new String[]{firstName, lastName});
            request.getRequestDispatcher("/WEB-INF/error-page.jsp").forward(request, response);
        }

    }
}
