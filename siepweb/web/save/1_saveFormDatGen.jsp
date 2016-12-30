<%@page import="model.formDatGen"%>
<%@page import="model.DAOformDatGen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*"%>


<% 
    
            DAOformDatGen objDAOFormDatGen = new DAOformDatGen();
            formDatGen objFormDatGen = new formDatGen();
            objFormDatGen.setCUP(request.getParameter("numberCUP"));
            objFormDatGen.setNameProject(request.getParameter("nameProject"));
            objFormDatGen.setExecutingEntity(request.getParameter("executingEntity"));
            objFormDatGen.setExecutingUnit(request.getParameter("executingUnit"));
            objDAOFormDatGen.addFormDatGen(objFormDatGen);
            out.print(objFormDatGen.toString());
%>