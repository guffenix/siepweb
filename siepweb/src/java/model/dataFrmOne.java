
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Locale;
import javafx.scene.control.Alert;

/**
 *
 * @author incubus
 */
public class dataFrmOne {
    //<parameters>
    private String projectName;
    private String numberCUP;
    private String executingEntity;
    private String executingUnit;
    private String coberage;
    private String locationRegion;
    private String locationProvince;
    private String locationCanton;
    private String locationTown;
    
    //<add>
    
    //<connection>
    private String classfor = "oracle.jdbc.driver.OracleDriver";
    private String urlOrcl = "jdbc:oracle:thin:@localhost:1521:XE";
    private String userOrcl = "poa";
    private String passwordOrcl = "espe";
   
    private Connection con = null;
    private PreparedStatement pr = null;
    private ResultSet rs = null;
    
    //<functions>
    public void insertDB(String projectName, String numberCUP,
            String executingEntity, String executingUnit
//            , String coberage,String locationRegion, String locationProvince, 
//            String locationCanton,String locationTown
    ){
        
        String sql = "INSERT INTO UTIC_UZFTDATGEN (UZFTDATGEN_NOMBRE, PK_UZFTDATGEN_CUP,"
                + "UZFTDATGEN_ENTIDAD_EJEC, UZFTDATGEN_UNID_EJECUT"
                //+ ", UZFTDATGEN_COBERTURA,UZFTDATGEN_ZONA_PLANIF,UZFTDATGEN_PROVINCIA,UZFTDATGEN_CANTON,UZFTDATGEN_PARROQUIA"
                + ") VALUES(?,?,?,?)";//,?,?,?,?,?)";
        
        try {
            Class.forName(classfor);
            //Especifica el idioma y region, si da conflicto comentar.
            Locale.setDefault(new Locale("es","ES"));
            con = DriverManager.getConnection(urlOrcl, userOrcl, passwordOrcl);
            
            pr = con.prepareStatement(sql);
            pr.setString(1, projectName);
            pr.setString(2, numberCUP);
            pr.setString(3, executingEntity);
            pr.setString(4, executingUnit);
//            pr.setString(5, coberage);
//            pr.setString(6, locationRegion);
//            pr.setString(7, locationProvince);
//            pr.setString(8, locationCanton);
//            pr.setString(9, locationTown);
            
            pr.executeUpdate();
        } catch (Exception e) {
            
        }
        
    }
    
    //<getter - setter>

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getNumberCUP() {
        return numberCUP;
    }

    public void setNumberCUP(String numberCUP) {
        this.numberCUP = numberCUP;
    }

    public String getExecutingEntity() {
        return executingEntity;
    }

    public void setExecutingEntity(String executingEntity) {
        this.executingEntity = executingEntity;
    }

    public String getExecutingUnit() {
        return executingUnit;
    }

    public void setExecutingUnit(String executingUnit) {
        this.executingUnit = executingUnit;
    }

    public String getCoberage() {
        return coberage;
    }

    public void setCoberage(String coberage) {
        this.coberage = coberage;
    }

    public String getLocationRegion() {
        return locationRegion;
    }

    public void setLocationRegion(String locationRegion) {
        this.locationRegion = locationRegion;
    }

    public String getLocationProvince() {
        return locationProvince;
    }

    public void setLocationProvince(String locationProvince) {
        this.locationProvince = locationProvince;
    }

    public String getLocationCanton() {
        return locationCanton;
    }

    public void setLocationCanton(String locationCanton) {
        this.locationCanton = locationCanton;
    }

    public String getLocationTown() {
        return locationTown;
    }

    public void setLocationTown(String locationTown) {
        this.locationTown = locationTown;
    }

    @Override
    public String toString() {
        return "dataFrmOne{" + "projectName=" + projectName + ", numberCUP=" + numberCUP + ", executingEntity=" + executingEntity + ", executingUnit=" + executingUnit + ", coberage=" + coberage + ", locationRegion=" + locationRegion + ", locationProvince=" + locationProvince + ", locationCanton=" + locationCanton + ", locationTown=" + locationTown + '}';
    }
    
}
