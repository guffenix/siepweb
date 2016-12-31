
<script type="text/javascript" src="../recursos/js/view.js"></script>
<p><span class="glyphicon glyphicon-list-alt"></span>
 <b><% out.print("DATOS GENERALES DEL PROYECTO"); %> </b></p>
<form id="objFrm1" method="post">
  <div class="form-group" id="namePro">
    <label for="nameProject">1.1. Nombre del Proyecto:</label>
    <input id="nameProject" name="frm1" type="text" class="form-control"  >
  </div>
  <div class="form-group">
  <p><b>1.2. CUP:</b></p>

<div class="input-group">
    <input id="numberCUP" name="frm1" type="text" class="form-control"  placeholder="C�digo �nico de Proyecto (Senplades)" aria-describedby="basic-addon2">
  <span class="input-group-addon" id="basic-addon2">ejemplo: 123456789.1234.123456</span>
</div>
  </div>
  <div class="form-group">
 

      <label for="implementingEntity">1.3. Entidad Ejecutora:</label>
    <select id="implementingEntity" name="frm1" class="form-control" >
      <option value="Universidad de la Fuerzas Armadas ESPE">Universidad de la Fuerzas Armadas ESPE</option>
      <option value="IASA">IASA</option>
      <option value="Sto. Domingo">Sto. Domingo</option>
    </select>

  </div>

  <div class="form-group">
    <label for="executingUnits">1.3.1. Unidades Ejecutoras:</label>
    <select id="executingUnits" name="frm1" class="form-control" >
      <option value="Direcci�n de Laboratorios">Direcci�n de Laboratorios</option>
      <option value="Direcci�n de Certificaci�n">Direcci�n de Certificaci�n</option>
      <option value="Direcci�n de Inspecci�n">Direcci�n de Inspecci�n</option>
      <option value="Direcci�n de Gesti�n de  Calidad">Direcci�n de Gesti�n de  Calidad</option>
    </select>
  </div>

<hr>

  <p><b>1.4. Cobertura y Localizaci�n:</b></p>
  <p><b>- Cobertura</b></p>
  <div class="panel panel-default text-center">
    <div class="panel-body">
    

        

  <div class="form-group col-sm-4">
      <div class="input-group ">
      <span class="input-group-addon">
          <input type="radio" aria-label="..." name="frm1" value="Local">
      </span>  
      <input type="text" class="form-control" aria-label="..." value="Local" readonly>
    </div>
  </div>


  <div class="form-group col-sm-4">
     <div class="input-group">
      <span class="input-group-addon">
        <input type="radio" aria-label="..." name="frm1" value="Regional">
      </span>
      <input type="text" class="form-control" aria-label="..." value="Regional" readonly>
    </div>
  </div>

  <div class="form-group col-sm-4">
    <div class="input-group">
      <span class="input-group-addon">
        <input type="radio" aria-label="..." name="frm1" value="Regional Amplia">
      </span>
      <input type="text" class="form-control" aria-label="..." value="Regional Amplia" readonly>
    </div>
  </div> 
    </div>   
  </div>
  
  
  <p><b>- Localizaci�n</b></p>
  <div class="panel panel-default">
    <div class="panel-body">
  <div class="form-group col-sm-6">
    <label for="znPln">Zona de Planificaci�n / Regi�n:</label>
    <select name="frm1" class="form-control" id="znPln">
      <option value="Zona de Planificaci�n #1">Zona de Planificaci�n #1</option>
      <option value="Zona de Planificaci�n #2">Zona de Planificaci�n #2</option>
      <option value="Zona de Planificaci�n #3">Zona de Planificaci�n #3</option>
    </select>
  </div>

  <div class="form-group col-sm-6">
    <label for="prov">Provincia:</label>
    <select name="frm1" class="form-control" id="prov">
      <option value="Provincia #1">Provincia #1</option>
      <option value="Provincia #2">Provincia #2</option>
      <option value="Provincia #3">Provincia #3</option>
    </select>
  </div>

  <div class="form-group col-sm-6">
    <label for="canton">Cant�n:</label>
    <select name="frm1" class="form-control" id="canton">
      <option value="Cant�n #1">Cant�n #1</option>
      <option value="Cant�n #2">Cant�n #2</option>
      <option value="Cant�n #3">Cant�n #3</option>
    </select>
  </div>

  <div class="form-group col-sm-6">
    <label for="parroqui">Parroquia:</label>
    <select name="frm1" class="form-control" id="parroqui">
      <option value="Parroquia #1">Parroquia #1</option>
      <option value="Parroquia #2">Parroquia #2</option>
      <option value="Parroquia #3">Parroquia #3</option>
    </select>
  </div>
  </div></div>
  
  <hr>

  <div class="form-group">
    <p><b>1.5. Plazo de Ejecuci�n:</b></p>
    <table class="table table-striped">
      <thead>
        <tr>
          <th>Fecha de presentaci�n</th>
          <th>Fecha de inicio</th>
          <th>Fecha de finalizaci�n</th>
          <th>Duraci�n ( # Meses)</th>
        </tr>
      </thead>
      <tbody>
        <tr>
            <td><input type="date" placeholder="dd/mm/aaaa" class="form-control" id="filingDate"></td>
            <td><input type="date" placeholder="dd/mm/aaaa" class="form-control" id="startDate"></td>
            <td><input type="date" placeholder="dd/mm/aaaa" class="form-control" id="finishDate"></td>
            <td><input type="number" min="1" class="form-control" id="durat"></td>
        </tr>
      </tbody>
    </table>
  </div>

  <div class="form-group">
    <p><b>1.6.  Monto :</b></p>
    <table class="table table-striped">
      <thead>
        <tr>
          <th>Presupuesto aporte Universidad</th>
          <th>Presupuesto entidad auspiciantes/beneficiaria</th>
          <th>IVA</th>
          <th>Presupuesto Total</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><input type="text" class="form-control" id="universityBudget"></td>
          <td><input type="text" class="form-control" id="sponsorBudget"></td>
          <td><input type="text" class="form-control" id="iva"></td>
          <td><input type="text" class="form-control" id="totalBudget"></td>
        </tr>
      </tbody>
    </table>
  </div>
  
  <div class="form-group">
    
    <table class="table table-striped">
      <tr>
        <th colspan="5">Desglose de presupuesto por a�os de ejecuci�n de proyecto</th>
      </tr>
      <tr>
        <td>2014</td>
        <td>2015</td>
        <td>2016</td>
        <td>2017</td>
        <td>TOTAL</td>
      </tr>
      <tr>
        <td><input type="text" class="form-control" id="budget2014"></td>
        <td><input type="text" class="form-control" id="budget2015"></td>
        <td><input type="text" class="form-control" id="budget2016"></td>
        <td><input type="text" class="form-control" id="budget2017"></td>
        <td><input type="text" class="form-control" id="totalAnnualBudget"></td>
      </tr>
    </table>
  </div>





  <div class="form-group">
  <p><b>1.7. Sector y Tipo de Proyecto:</b></p>
    <label for="sector">Sector:</label>
    <input type="text" class="form-control" id="sector">

    <label for="subsector">Subsector:</label>
    <input type="text" class="form-control" id="subSector">
  </div>

  <div class="form-group">
    <p><b>1.8. Responsable del Proyecto:</b></p>
    <table class="table table-striped">
      <thead>
        <tr>
          <th>Nombres y Apellidos</th>
          <th>Cargo</th>
          <th>Unidad/Dpto.</th>
          <th>Mail</th>
          <th>Tel�fono</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>
             <select class="form-control" id="namesPersonInCharge">
      <option value="nmu">Usuario #1</option>
      <option value="nmu">Usuario #2</option>
      <option value="nmu">Usuario #3</option>
    </select>
          </td>
          <td><input type="text" class="form-control" id="positionPersonInCharge"></td>
          <td><input type="text" class="form-control" id="departmentPersonInCharge"></td>
          <td><input type="text" class="form-control" id="emailPersonInCharge"></td>
          <td><input type="text" class="form-control" id="phonePersonInCharge"></td>
        </tr>
      </tbody>
    </table>
  </div>

  <div class="form-group">
    <label for="categProy">1.9 Categorizaci�n del proyecto:</label>
    <select class="form-control" id="categorizationProject">
      <option value="indispensabel">Indispensable</option>
      <option value="necessary">Necesario</option>
      <option value="desirable">Deseable</option>
      <option value="admissible">Admisible</option>
    </select>
  </div>

</form>

<div id="result2"></div>