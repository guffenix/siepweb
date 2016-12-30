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
public class DAOformDatGen {
    
    private conexion objConn;
    PreparedStatement pst = null;
    public boolean addFormDatGen(formDatGen objFormDatGen)
    {
        
        boolean flag = false;
        String sql = "INSERT INTO UTIC_UZFTDATGEN (UZFTDATGEN_NOMBRE, PK_UZFTDATGEN_CUP,"
                + "UZFTDATGEN_ENTIDAD_EJEC, UZFTDATGEN_UNID_EJECUT"
                //+ ", UZFTDATGEN_COBERTURA,UZFTDATGEN_ZONA_PLANIF,UZFTDATGEN_PROVINCIA,UZFTDATGEN_CANTON,UZFTDATGEN_PARROQUIA"
                + ") VALUES(?,?,?,?)";//,?,?,?,?,?)";
        try {
            
            objConn = new conexion();
            pst = objConn.getConexion().prepareStatement(sql);
            pst.setString(1, objFormDatGen.getNameProject());
            pst.setString(2, objFormDatGen.getCUP());
            pst.setString(3, objFormDatGen.getExecutingEntity());
            pst.setString(4, objFormDatGen.getExecutingUnit());
            
            if(pst.executeUpdate() == 1)
            {
                flag = true;
            }
            
        } catch (Exception e) {
        }finally{
            try {
                if (objConn.getConexion() != null) objConn.getConexion().close();
                if (pst != null) pst.close();
            } catch (Exception e) {
            }
        }
        return flag;
    }
}
