<%@ page import="model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Quiz App</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>    
</head>
<br>
    <%
        // Making sure the user is logged in
        User user = (User)session.getAttribute("user");

        try {
            user.getRole();
        } catch(Exception ex) {
            response.sendRedirect("/signIn.jsp");
        }
    %>
    <h1>You have successfully signed in</h1>
    <p>Here is the information that you entered:</p>

    <p>
        <label>Email:</label>
        <span>${user.email}</span><br>
        <label>Password:</label>
        <span>${user.password}</span><br>
        <label>Role:</label>
        <span>${user.role}</span><br>
    </p>
    </br>
    <form action="SOS" method="get">
        <input type="submit" value="Sign Out">
    </form>

</body>
</html>