<%@ page import="tasks.entity.TaskEntity" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task</title>
    <%@include file="bootstrap/bootstrap.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>

<%
    TaskEntity task = (TaskEntity) request.getAttribute("task");
%>

<div id = "detailBlock">
    <form action="/updateTask" method="post" style="width: 100%;">
        <input type="hidden" value="<%=task.getId()%>" name="id">
        <div class="mb-3">
            <label class="form-label">Наименование:</label>
            <input class="form-control" placeholder="Наименование..." name="name" value="<%=task.getName()%>">
        </div>
        <div class="mb-3">
            <label class="form-label">Описание:</label>
            <textarea class="form-control" rows="3" placeholder="Описание..." name="description"><%=task.getDescription()%></textarea>
        </div>
        <div class="mb-3">
            <label class="form-label">Крайний срок:</label>
            <input type="date" class="form-control" name="deadlineDate" value="<%=task.getDeadlineDate()%>">
        </div>
        <select class="form-select mb-3" name="isDone">
            <option selected value="<%=task.isDone()%>"><%=task.isDone() ? "Да" : "Нет"%></option>
            <option value="<%=!task.isDone()%>"><%=task.isDone() ? "Нет" : "Да"%></option>
        </select>
        <button class="btn btn-success">Сохранить</button>
        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteTask">
            Удалить
        </button>
    </form>
</div>

<form action="/deleteTask" method="post">
    <div class="modal fade" id="deleteTask" tabindex="-1"  aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel1">Удалить задание</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" value="<%=task.getId()%>" name="id">
                    Вы действительно хотите удалить задание?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Отменить</button>
                    <button class="btn btn-danger">Удалить</button>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>

