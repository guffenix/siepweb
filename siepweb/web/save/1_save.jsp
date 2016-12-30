<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page language="java" import="java.util.*"%>
<%@page import="model.dataFrmOne"%> 

<% 
    dataFrmOne dataFO = new dataFrmOne();
    dataFO.setProjectName(request.getParameter("dato0"));
    dataFO.setNumberCUP(request.getParameter("dato1"));
    dataFO.setExecutingEntity(request.getParameter("dato2"));
    dataFO.setExecutingUnit(request.getParameter("dato3"));
    
    dataFO.insertDB(dataFO.getProjectName(), dataFO.getNumberCUP(), dataFO.getExecutingEntity(), dataFO.getExecutingUnit());
    out.print(dataFO.toString());
%>