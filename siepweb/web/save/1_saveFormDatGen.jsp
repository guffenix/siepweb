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
            objFormDatGen.setCoverage(request.getParameter("coverage"));
            objFormDatGen.setPlanningArea(request.getParameter("planningArea"));
            objFormDatGen.setProvince(request.getParameter("province"));
            objFormDatGen.setCanton(request.getParameter("canton"));
            objFormDatGen.setParish(request.getParameter("parish"));
            objFormDatGen.setFilingDateYYMMDD(request.getParameter("filingDate"));
            objFormDatGen.setStartDateYYMMDD(request.getParameter("startDate"));
            objFormDatGen.setFinishDateYYMMDD(request.getParameter("finishDate"));
            objFormDatGen.setDuration(Float.parseFloat(request.getParameter("durationM")));
            objFormDatGen.setUniversityBudget(Float.parseFloat(request.getParameter("universityBudget")));
            objFormDatGen.setSponsorBudget(Float.parseFloat(request.getParameter("sponsorBudget")));
            objFormDatGen.setTotalBudget(Float.parseFloat(request.getParameter("totalBudget")));
            objFormDatGen.setIVA(Float.parseFloat(request.getParameter("iva")));
            objFormDatGen.setBudget2014(Float.parseFloat(request.getParameter("budget2014")));
            objFormDatGen.setBudget2015(Float.parseFloat(request.getParameter("budget2015")));
            objFormDatGen.setBudget2016(Float.parseFloat(request.getParameter("budget2016")));
            objFormDatGen.setBudget2017(Float.parseFloat(request.getParameter("budget2017")));
            objFormDatGen.setTotalAnnualBudget(Float.parseFloat(request.getParameter("totalAnnualBudget")));
            objFormDatGen.setSector(request.getParameter("sector"));
            objFormDatGen.setSubSector(request.getParameter("subSector"));
            objFormDatGen.setNamesPersonInCharge(request.getParameter("namesPersonInCharge"));
            objFormDatGen.setPositionPersonInCharge(request.getParameter("positionPersonInCharge"));
            objFormDatGen.setDepartmentPersonInCharge(request.getParameter("departmentPersonInCharge"));
            objFormDatGen.setEmailPersonInCharge(request.getParameter("emailPersonInCharge"));
            objFormDatGen.setPhonePersonInCharge(request.getParameter("phonePersonInCharge"));
            objFormDatGen.setCategorizationProject(request.getParameter("categorizationProject"));
            
            objDAOFormDatGen.addFormDatGen(objFormDatGen);
            
            out.println(objFormDatGen.toString());
%>