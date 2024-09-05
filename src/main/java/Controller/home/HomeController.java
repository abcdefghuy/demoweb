package Controller.home;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Controller.User.User;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

public class HomeController extends HttpServlet {
@Override
    public void doPost(
        HttpServletRequest request, HttpServletResponse response)
    throws ServletException,IOException {
    String url = "/index.html";

    // get current action
    String action = request.getParameter("action");
    if (action == null) {
        action = "join";  // default action
    }
    // perform action and set URL to appropriate page
    if (action.equals("join")) {
        url = "/index.html";    // the "join" page
    }
    else if (action.equals("add")) {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String dateString = request.getParameter("dateOfBirth");
        LocalDate date=null ;
        if (dateString == null || dateString.isEmpty()) {

        } else {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

            try {
                 date = LocalDate.parse(dateString, formatter);
                System.out.println("Parsed date: " + date);
            } catch (DateTimeParseException e) {
                System.out.println("Error parsing date: " + e.getMessage());
            }
        }
        String answer = request.getParameter("answer");
        String[] announcements = request.getParameterValues("announcement");


        StringBuilder announcementsHtml = new StringBuilder();
        if (announcements != null && announcements.length > 0) {
            for (String announcement : announcements) {
                announcementsHtml.append("<li>").append(announcement).append("</li>");
            }
        } else {
            announcementsHtml.append("<li>No options selected.</li>");
        }
        String[] contactMethods = request.getParameterValues("contact");


        String contactMethodsString = contactMethods != null ? String.join(", ", contactMethods) : "No contact methods selected.";



        // store data in User object and save User object in db
        User user = new User(firstName, lastName, email,date);
//            UserDB.insert(user);

        // set User object in request object and set URL
        request.setAttribute("user", user);
        request.setAttribute("answer", answer);
        request.setAttribute("announcements", announcementsHtml.toString());
        request.setAttribute("contact", contactMethodsString);
        url = "/index.jsp";   // the "thanks" page
    }

    // forward request and response objects to specified URL
    getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
}
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

}



