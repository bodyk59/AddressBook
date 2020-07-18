package com.softserve.academy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/update")
public class UpdateRecordServlet extends HttpServlet {
    private AddressBook addressBook;
    private String[] record;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String address = addressBook.read(firstName, lastName);

        record = new String[]{firstName, lastName, address};

        request.setAttribute("record", record);
        request.getRequestDispatcher("/WEB-INF/update-record.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (addressBook.update(record[0], record[1], request.getParameter("address"))) {
            response.sendRedirect("/records/list");
        } else {
            request.setAttribute("error", String.format("Person with name '%s %s' not found in Address Book!", record[0], record[1]));
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            request.getRequestDispatcher("/WEB-INF/error-page.jsp").forward(request, response);
        }
    }
}
