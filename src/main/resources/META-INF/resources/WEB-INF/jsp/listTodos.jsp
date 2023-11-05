<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Todos Page</title>
</head>
<body>
    <div>Welcome ${username}</div>
    <hr>
    <h1>Your Todos</h1>

    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Description</th>
                <th>Target Date</th>
                <th>Is done?</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.id}</td>
                    <td>${todo.description}</td>
                    <td>${todo.targetDate}</td>
                    <td>${todo.done}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>