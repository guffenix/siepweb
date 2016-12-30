/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author Edward
 */
public class formDatGen {
    private String CUP;
    private String nameProject;
    private String executingEntity;//Entidad Ejecutora
    private String executingUnit;//Unidad Ejecutora
    private String coverage;//cobertura
    private String planningArea;//Zona de planificacion
    private String province;
    private String canton;
    private String parish;//parroquia
    private float IVA;//
    private float universityBudget;//Presupuesto por Aporte de Universidad
    private float sponsorBudget;//Presupuesto de Entidad Auspiciante/Beneficiaria
    private float totalBudget;//Presupuesto total
    private float budget2014;//Presupuesto 2014??
    private float budget2015;//Presupuesto 2015??
    private float budget2016;//Presupuesto 2016??
    private float budget2017;//Presupuesto 2017??
    private float totalAnnualBudget;//Presupuesto anual total
    private Date filingDate;//Fecha de presentacion
    private Date startDate;//Fecha de inicio
    private Date finishDate;//Fecha de finalizacion
    private Date duration;//Duracion
    private String sector;
    private String subSector;
    private String namesPersonInCharge;//Nombres y Apellidos del responsable del proyecto
    private String positionPersonInCharge;//Cargo del responsable del proyecto
    private String departmentPersonInCharge;//Departamento del responsable del proyecto
    private String emailPersonInCharge;//Email del responsable del proyecto
    private String phonePersonInCharge;//Cargo del responsable del proyecto
    private String ategorizationProject;//Categorizaciondel proyecto

    public formDatGen() {
    }

    public formDatGen(String CUP, String nameProject, String executingEntity, String executingUnit, String coverage, String planningArea, String province, String canton, String parish, float IVA, float universityBudget, float sponsorBudget, float totalBudget, float budget2014, float budget2015, float budget2016, float budget2017, float totalAnnualBudget, Date filingDate, Date startDate, Date finishDate, Date duration, String sector, String subSector, String namesPersonInCharge, String positionPersonInCharge, String departmentPersonInCharge, String emailPersonInCharge, String phonePersonInCharge, String ategorizationProject) {
        this.CUP = CUP;
        this.nameProject = nameProject;
        this.executingEntity = executingEntity;
        this.executingUnit = executingUnit;
        this.coverage = coverage;
        this.planningArea = planningArea;
        this.province = province;
        this.canton = canton;
        this.parish = parish;
        this.IVA = IVA;
        this.universityBudget = universityBudget;
        this.sponsorBudget = sponsorBudget;
        this.totalBudget = totalBudget;
        this.budget2014 = budget2014;
        this.budget2015 = budget2015;
        this.budget2016 = budget2016;
        this.budget2017 = budget2017;
        this.totalAnnualBudget = totalAnnualBudget;
        this.filingDate = filingDate;
        this.startDate = startDate;
        this.finishDate = finishDate;
        this.duration = duration;
        this.sector = sector;
        this.subSector = subSector;
        this.namesPersonInCharge = namesPersonInCharge;
        this.positionPersonInCharge = positionPersonInCharge;
        this.departmentPersonInCharge = departmentPersonInCharge;
        this.emailPersonInCharge = emailPersonInCharge;
        this.phonePersonInCharge = phonePersonInCharge;
        this.ategorizationProject = ategorizationProject;
    }

    public String getCUP() {
        return CUP;
    }

    public void setCUP(String CUP) {
        this.CUP = CUP;
    }

    public String getNameProject() {
        return nameProject;
    }

    public void setNameProject(String nameProject) {
        this.nameProject = nameProject;
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

    public String getCoverage() {
        return coverage;
    }

    public void setCoverage(String coverage) {
        this.coverage = coverage;
    }

    public String getPlanningArea() {
        return planningArea;
    }

    public void setPlanningArea(String planningArea) {
        this.planningArea = planningArea;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCanton() {
        return canton;
    }

    public void setCanton(String canton) {
        this.canton = canton;
    }

    public String getParish() {
        return parish;
    }

    public void setParish(String parish) {
        this.parish = parish;
    }

    public float getIVA() {
        return IVA;
    }

    public void setIVA(float IVA) {
        this.IVA = IVA;
    }

    public float getUniversityBudget() {
        return universityBudget;
    }

    public void setUniversityBudget(float universityBudget) {
        this.universityBudget = universityBudget;
    }

    public float getSponsorBudget() {
        return sponsorBudget;
    }

    public void setSponsorBudget(float sponsorBudget) {
        this.sponsorBudget = sponsorBudget;
    }

    public float getTotalBudget() {
        return totalBudget;
    }

    public void setTotalBudget(float totalBudget) {
        this.totalBudget = totalBudget;
    }

    public float getBudget2014() {
        return budget2014;
    }

    public void setBudget2014(float budget2014) {
        this.budget2014 = budget2014;
    }

    public float getBudget2015() {
        return budget2015;
    }

    public void setBudget2015(float budget2015) {
        this.budget2015 = budget2015;
    }

    public float getBudget2016() {
        return budget2016;
    }

    public void setBudget2016(float budget2016) {
        this.budget2016 = budget2016;
    }

    public float getBudget2017() {
        return budget2017;
    }

    public void setBudget2017(float budget2017) {
        this.budget2017 = budget2017;
    }

    public float getTotalAnnualBudget() {
        return totalAnnualBudget;
    }

    public void setTotalAnnualBudget(float totalAnnualBudget) {
        this.totalAnnualBudget = totalAnnualBudget;
    }

    public Date getFilingDate() {
        return filingDate;
    }

    public void setFilingDate(Date filingDate) {
        this.filingDate = filingDate;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getFinishDate() {
        return finishDate;
    }

    public void setFinishDate(Date finishDate) {
        this.finishDate = finishDate;
    }

    public Date getDuration() {
        return duration;
    }

    public void setDuration(Date duration) {
        this.duration = duration;
    }

    public String getSector() {
        return sector;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    public String getSubSector() {
        return subSector;
    }

    public void setSubSector(String subSector) {
        this.subSector = subSector;
    }

    public String getNamesPersonInCharge() {
        return namesPersonInCharge;
    }

    public void setNamesPersonInCharge(String namesPersonInCharge) {
        this.namesPersonInCharge = namesPersonInCharge;
    }

    public String getPositionPersonInCharge() {
        return positionPersonInCharge;
    }

    public void setPositionPersonInCharge(String positionPersonInCharge) {
        this.positionPersonInCharge = positionPersonInCharge;
    }

    public String getDepartmentPersonInCharge() {
        return departmentPersonInCharge;
    }

    public void setDepartmentPersonInCharge(String departmentPersonInCharge) {
        this.departmentPersonInCharge = departmentPersonInCharge;
    }

    public String getEmailPersonInCharge() {
        return emailPersonInCharge;
    }

    public void setEmailPersonInCharge(String emailPersonInCharge) {
        this.emailPersonInCharge = emailPersonInCharge;
    }

    public String getPhonePersonInCharge() {
        return phonePersonInCharge;
    }

    public void setPhonePersonInCharge(String phonePersonInCharge) {
        this.phonePersonInCharge = phonePersonInCharge;
    }

    public String getAtegorizationProject() {
        return ategorizationProject;
    }

    public void setAtegorizationProject(String ategorizationProject) {
        this.ategorizationProject = ategorizationProject;
    }

    @Override
    public String toString() {
        return "formDatGen{" + "CUP=" + CUP + ", nameProject=" + nameProject + ", executingEntity=" + executingEntity + ", executingUnit=" + executingUnit + ", coverage=" + coverage + ", planningArea=" + planningArea + ", province=" + province + ", canton=" + canton + ", parish=" + parish + ", IVA=" + IVA + ", universityBudget=" + universityBudget + ", sponsorBudget=" + sponsorBudget + ", totalBudget=" + totalBudget + ", budget2014=" + budget2014 + ", budget2015=" + budget2015 + ", budget2016=" + budget2016 + ", budget2017=" + budget2017 + ", totalAnnualBudget=" + totalAnnualBudget + ", filingDate=" + filingDate + ", startDate=" + startDate + ", finishDate=" + finishDate + ", duration=" + duration + ", sector=" + sector + ", subSector=" + subSector + ", namesPersonInCharge=" + namesPersonInCharge + ", positionPersonInCharge=" + positionPersonInCharge + ", departmentPersonInCharge=" + departmentPersonInCharge + ", emailPersonInCharge=" + emailPersonInCharge + ", phonePersonInCharge=" + phonePersonInCharge + ", ategorizationProject=" + ategorizationProject + '}';
    }



    
    
    
    
}
