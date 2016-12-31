/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.PreparedStatement;

/**
 *
 * @author Edward
 */
public class DAOformDatGen extends conexion{
    
//    private conexion objConn;
    PreparedStatement pst = null;
    public boolean addFormDatGen(formDatGen objFormDatGen)
    {
        
        boolean flag = false;
        
        String sql = "INSERT INTO UTIC_UZFTDATGEN ("
                + "UZFTDATGEN_NOMBRE, PK_UZFTDATGEN_CUP,UZFTDATGEN_ENTIDAD_EJEC,"
                + "UZFTDATGEN_UNID_EJECUT,UZFTDATGEN_COBERTURA,UZFTDATGEN_ZONA_PLANIF,"
                + "UZFTDATGEN_PROVINCIA,UZFTDATGEN_CANTON,UZFTDATGEN_PARROQUIA,"
                + "UZFTDATGEN_FECHA_PRES,UZFTDATGEN_FECHA_INIC,UZFTDATGEN_FECHA_FIN,"
                + "UZFTDATGEN_DURACION,UZFTDATGEN_PRES_IVA,UZFTDATGEN_PRES_UNIV,"
                + "UZFTDATGEN_PRES_AUSP_BEN,UZFTDATGEN_PRES_TOTAL,UZFTDATGEN_PRES_14,"
                + "UZFTDATGEN_PRES_15,UZFTDATGEN_PRES_16,UZFTDATGEN_PRES_17,"
                + "UZFTDATGEN_PRES_ANIOSTOTAL,UZFTDATGEN_SECTOR,UZFTDATGEN_SUBSECTOR,"
                + "UZFTDATGEN_RESP_NOMBRES,UZFTDATGEN_RESP_CARGO,UZFTDATGEN_RESP_DEPART,"
                + "UZFTDATGEN_RESP_MAIL,UZFTDATGEN_RESP_FONO,UZFTDATGEN_CATEGORIZACION"
                + ") VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            
            //objConn = new conexion();
            pst = getConexion().prepareStatement(sql);
            pst.setString(1, objFormDatGen.getNameProject());
            pst.setString(2, objFormDatGen.getCUP());
            pst.setString(3, objFormDatGen.getExecutingEntity());
            pst.setString(4, objFormDatGen.getExecutingUnit());
            pst.setString(5, objFormDatGen.getCoverage());
            pst.setString(6, objFormDatGen.getPlanningArea());
            pst.setString(7, objFormDatGen.getProvince());
            pst.setString(8, objFormDatGen.getCanton());
            pst.setString(9, objFormDatGen.getParish());
            pst.setString(10, objFormDatGen.getFilingDateDDMMYY());
            pst.setString(11, objFormDatGen.getStartDateDDMMYY());
            pst.setString(12, objFormDatGen.getFinishDateDDMMYY());
            pst.setFloat(13, objFormDatGen.getDuration());
            pst.setFloat(14, objFormDatGen.getIVA());
            pst.setFloat(15, objFormDatGen.getUniversityBudget());
            pst.setFloat(16, objFormDatGen.getSponsorBudget());
            pst.setFloat(17, objFormDatGen.getTotalBudget());
            pst.setFloat(18, objFormDatGen.getBudget2014());
            pst.setFloat(19, objFormDatGen.getBudget2015());
            pst.setFloat(20, objFormDatGen.getBudget2016());
            pst.setFloat(21, objFormDatGen.getBudget2017());
            pst.setFloat(22, objFormDatGen.getTotalAnnualBudget());
            pst.setString(23, objFormDatGen.getSector());
            pst.setString(24, objFormDatGen.getSubSector());
            pst.setString(25, objFormDatGen.getNamesPersonInCharge());
            pst.setString(26, objFormDatGen.getPositionPersonInCharge());
            pst.setString(27, objFormDatGen.getDepartmentPersonInCharge());
            pst.setString(28, objFormDatGen.getEmailPersonInCharge());
            pst.setString(29, objFormDatGen.getPhonePersonInCharge());
            pst.setString(30, objFormDatGen.getCategorizationProject());
            
            
            if(pst.executeUpdate() == 1)
            {
                flag = true;
            }
            pst.close();
            getConexion().close();
            
        } catch (Exception e) {
        }finally{
            try {
                if (getConexion() != null) getConexion().close();
                if (pst != null) pst.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return flag;
    }
}
