<input id="id_frm" type="hidden" name="id_frm" value="">

<p><span class="glyphicon glyphicon-list-alt"></span>
 <b>OBJETIVOS DEL PROYECTO</b></p>
 <form>
 <p><b>3.1. Objetivo general y objetivos espec�ficos:</b></p>
  <div class="panel panel-default">
    <div class="panel-body">
      <div class="form-group" id="namePro">
	    <label for="aod-demand">Objetivo General:</label>
	    
	    <input type="text" class="form-control" id="aod-demand">
	  </div>

	  <p><b>Objetivos Espec�ficos:</b></p>
          <div class="input-group" id="main">
              <input type="text" class="form-control" aria-label="..." placeholder="Objetivo espec�fico">
              <div class="input-group-btn">
                  <button type="button" class="btn btn-default " id="addInput">
                      <span class="glyphicon glyphicon-plus"></span>
                  </button>
                  <button type="button" class="btn btn-default " id="delInput" disabled>
                      <span class="glyphicon glyphicon-minus"></span>
                  </button>
              </div>
          </div>
          <div class="input-group" id="main">
          <button type="button" class="btn btn-default " id="muestraT" value="MUESTRA">
              MUESTRA
          </button>
          </div>


	  <div class="form-group" id="namePro">
<p><br><b>Alineaci�n  del proyecto con los  objetivos al PNBV 2013-2017:</b></p>

    <div class="input-group">
      <span class="input-group-addon">
        <input type="checkbox" aria-label="..." value="objt1">
      </span>
      <input type="text" class="form-control" aria-label="..." value="Objetivo PNBV 1" readonly>
    </div>

    <div class="input-group">
      <span class="input-group-addon">
        <input type="checkbox" aria-label="..." value="objt2">
      </span>
      <input type="text" class="form-control" aria-label="..." value="Objetivo PNBV 2" readonly>
    </div>

    <div class="input-group">
      <span class="input-group-addon">
        <input type="checkbox" aria-label="..." value="objt3">
      </span>
      <input type="text" class="form-control" aria-label="..." value="Objetivo PNBV 3" readonly>
    </div>

    <div class="input-group">
      <span class="input-group-addon">
        <input type="checkbox" aria-label="..." value="objt4">
      </span>
      <input type="text" class="form-control" aria-label="..." value="Objetivo PNBV 4" readonly>
    </div>

    <div class="input-group">
      <span class="input-group-addon">
        <input type="checkbox" aria-label="..." value="objt5">
      </span>
      <input type="text" class="form-control" aria-label="..." value="Objetivo PNBV 5" readonly>
    </div>

	  </div>


    </div>
   </div>

   <p><b>3.2. Indicadores de resultado:</b></p>

   <table class="table table-hover" id="ind_result" >
       <tr >
           <th>Indicador</th>
           <th>F�rmula</th>
           <th>Meta</th>
       </tr>
       <td colspan="3">Objetivo Espec�fico</td>
       <tr >
           <td><input type="text" class="form-control"></td>
           <td><input type="text" class="form-control"></td>
           <td><input type="text" class="form-control"></td>
       </tr>         
   </table>
 
   <br>
   <p>Descripci�n adicional de ayuda.</p>
   <br>

   <p><b>3.3. Matriz de Marco L�gico:</b></p>
   <table class="table table-striped">
       <tr>
           <th>Resumen Narrativo de Objetivos</th>
           <th>Indicadores Verificables Objetivamente</th>
           <th>Medios de Verificaci�n</th>
           <th>Supuestos</th>
       </tr>
       <tr>
           <td><input type="text" class="form-control" value="Resumen Narrativo"></td>
           <td><input type="text" class="form-control"></td>
           <td><input type="text" class="form-control"></td>
           <td>
               <input type="text" class="form-control">
               <input type="radio" name="meta" value="prct"> (% Porcentaje) 
               <input type="radio" name="meta" value="num"> (# Num�rico) 
           </td>
       </tr>

       <tr>
           <td colspan="4">ACTIVIDADES: COMPONENTE # COSTO $ 000.000</td>
       </tr>
       <tr>
           <th>Resumen Narrativo de Objetivos</th>
           <th>Costo</th>
           <th>Medios de Verificaci�n</th>
           <th>Supuestos</th>
       </tr>
       <tr>
           <td><input type="text" class="form-control"></td>
           <td><input type="text" class="form-control"></td>
           <td><input type="text" class="form-control"></td>
           <td><input type="text" class="form-control"></td>
       </tr>

       <tr>
           <td>TOTAL PROYECTO<br></td>
           <td colspan="3"><input type="text" class="form-control"></td>
       </tr>
   </table>
 </form>
<div id="result3"></div>