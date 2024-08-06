<%@page import="com.starprotectvehicle.dao.UnderWriterDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    UnderWriterDAO underWriterDAO = new UnderWriterDAO();
    if(underWriterDAO.validateUnderWriter(username, password)) {
        session.setAttribute("user", "underWriter");
        session.setAttribute("underwriterId", underWriterDAO.getUnderWriterId(username));
        response.sendRedirect("underWriterMenu.jsp");
    } else {
        out.println("<script>alert('Invalid Credentials'); location='loginUnderWriter.jsp';</script>");
    }
%>
