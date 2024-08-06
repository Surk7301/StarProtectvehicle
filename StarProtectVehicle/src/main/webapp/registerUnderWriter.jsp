<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register UnderWriter</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <div class="content">
        <h2>Register UnderWriter</h2>
        <form action="registerUnderWriterAction.jsp" method="post">
            <label for="underwriterId">UnderWriter ID:</label>
            <input type="number" id="underwriterId" name="underwriterId" value="<%= new Random().nextInt(100000) %>" readonly><br><br>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" maxlength="30" required><br><br>
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" required><br><br>
            <label for="joiningDate">Joining Date:</label>
            <input type="text" id="joiningDate" name="joiningDate" value="<%= new SimpleDateFormat("yyyy-MM-dd").format(new Date()) %>" readonly><br><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" maxlength="30" required><br><br>
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>
