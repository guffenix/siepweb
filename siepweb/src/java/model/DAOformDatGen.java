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
        objConn = new conexion();
        boolean flag = false;
        
        try {
            //"INSERT INTO utic_uzftdatgen(PK_UZFTDATGEN_CUP,UZFTDATGEN_NOMBRE,UZFTDATGEN_ENTIDAD_EJEC,UZFTDATGEN_UNID_EJECUT) VALUES ('22','".$nameProj."','espe','ufa')"
            String sql = "INSERT INTO utic_uzftdatgen(PK_UZFTDATGEN_CUP,UZFTDATGEN_NOMBRE) VALUES (?,?)";
            pst = objConn.getConexion().prepareStatement(sql);
            pst.setString(1, objFormDatGen.getCUP());
            pst.setString(2, objFormDatGen.getNameProject());
            //pst.setString(3, objCampeon.getFecha_fin_campeon());
            //pst.setString(4, objCampeon.getPais_campeon());
            
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
