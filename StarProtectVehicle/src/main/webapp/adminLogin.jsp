<%@page import="com.starprotectvehicle.dao.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    AdminDAO adminDAO = new AdminDAO();
    if(adminDAO.validateAdmin(username, password)) {
        session.setAttribute("user", "admin");
        response.sendRedirect("manageUnderWriter.jsp");
    } else {
        out.println("<script>alert('Invalid Credentials'); location='loginAdmin.jsp';</script>");
    }
%>
