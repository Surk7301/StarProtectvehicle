<%@page import="com.starprotectvehicle.model.UnderWriter"%>
<%@page import="com.starprotectvehicle.dao.UnderWriterDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int underwriterId = Integer.parseInt(request.getParameter("underwriterId"));
    String name = request.getParameter("name");
    String dob = request.getParameter("dob");
    String joiningDate = request.getParameter("joiningDate");
    String password = request.getParameter("password");

    UnderWriter underWriter = new UnderWriter(underwriterId, name, dob, joiningDate, password);
    UnderWriterDAO underWriterDAO = new UnderWriterDAO();
    boolean status = underWriterDAO.registerUnderWriter(underWriter);

    if(status) {
        out.println("<script>alert('UnderWriter Registered Successfully'); location='manageUnderWriter.jsp';</script>");
    } else {
        out.println("<script>alert('Error in Registration'); location='registerUnderWriter.jsp';</script>");
    }
%>
