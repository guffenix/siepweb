<%@page import="model.formDatGen"%>
<%@page import="model.DAOformDatGen"%>
<%
    if (request.getParameter("nameProject") != null
                || request.getParameter("numberProject") != null) {
        
            String nameProject = request.getParameter("nameProject");
            String numberProject = request.getParameter("numberProject");
            
            DAOformDatGen objDAOFormDatGen = new DAOformDatGen();
            formDatGen objFormDatGen = new formDatGen();
            objFormDatGen.setCUP(numberProject);
            objFormDatGen.setNameProject(nameProject);
            objDAOFormDatGen.addFormDatGen(objFormDatGen);
            out.println(1);
            
        } else {
            out.println(0);
        }
%>
