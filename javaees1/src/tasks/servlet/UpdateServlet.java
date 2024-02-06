package tasks.servlet;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tasks.entity.TaskEntity;
import tasks.service.DBManager;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/updateTask")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        LocalDate deadlineDate = LocalDate.parse(req.getParameter("deadlineDate"));
        boolean isDone = Boolean.parseBoolean(req.getParameter("isDone"));

        DBManager.update(id, new TaskEntity(name, description, deadlineDate, isDone));
        resp.sendRedirect("/details?id=" + id);
    }
}