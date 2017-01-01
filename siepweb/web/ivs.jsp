<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>POA - ESPE </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="recursos/css/bootstrap.min.css">
  <script src="recursos/js/jquery-1.12.4.min.js"></script>
  <script src="recursos/js/bootstrap.min.js"></script>
  <script src="recursos/js/view.js"></script>
  <script src="recursos/js/add_del.js"></script>
  <link rel="icon" type="image/png" href="recursos/images/logoPoa.png">

  <style>
body{
  background-color: rgb(234,234,236);
}
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: rgb(75,95,105);
      /*75,95,105);*/
      
    }

    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 655px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #fff;
      height: 100%;
      color: rgb(0,0,0);
    }

    .purpleColor{
      background-color: rgb(234,234,236);
    }
    .orangeColor{
      color: rgb(240,100,35);
    }
    
    .blueColor{
      color: rgb(60,113,191);
    }

    .grayColor{
      color: rgb(178,178,178);
    }

    .grayDarkColor{
      color: rgb(26,26,26);
    }

    .darkColor{
      color: rgb(0,0,0);

    }
    .greenColor{
      color: rgb(50,200,90);
      cursor: pointer;
    }

    .grayDarkColor:hover{
      color: rgb(0,45,140);
    }
    
    .whiteColor{
      color: rgb(255,255,255);
    }
    .whiteColor:hover{

      color: rgb(75,95,105);
    }
    .whiteColor2{
      color: rgb(255,255,255);
      
    }
    .whiteColoreV1{
        color: rgb(255,255,255);
    }
    .whiteColoreV1:hover{
        color: rgb(255,255,255);
        background-color: #286090;
    }

    .greenDarkColor{
      background-color: rgb(75,95,105);
      color: rgb(255,255,255);
    }
    .greenDarkColor:hover{
      background-color: rgb(210,215,220);
      color: rgb(75,95,105);
    }

    /* Set black background color, white text and some padding */
    footer {

      padding: 0 15px 0 10px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }

    textarea {
      resize: none;
    }

    .tableScroll{
      overflow-x:auto;
    }
    .widthTable{
      min-width: 600px;
    }
    .widthCell{
      width: 75px;
    }


    .badge{
      margin-top: -3px;
      background-color: rgb(50,200,90);
     border-radius: 5px 5px 5px 5px; 
    }

    .backgroundLi:hover{
      background-color: rgb(210,215,220);
      color: rgb(75,95,105);
    }

    .containerEdge{
      -webkit-box-shadow: 0px 2px 6px 4px rgba(75,95,105,1);
      -moz-box-shadow: 0px 2px 6px 4px rgba(75,95,105,1);
      box-shadow: 0px 2px 6px 4px rgba(75,95,105,1);
    }

    .menuFixed{
      position: fixed; 
      width: 24%;
    }

    .divShadow{
      /*margin: 10px;*/
      
      margin-bottom: 100px;
      padding: 30px 30px;
      background-color: rgb(255,255,255);
      display: none;
      -webkit-box-shadow: 0px 0px 3px 1px rgba(0,0,0,0.75);
      -moz-box-shadow: 0px 0px 3px 1px rgba(0,0,0,0.75);
      box-shadow: 0px 0px 3px 1px rgba(0,0,0,0.75);
    }

    #sectionNotify{
      text-align: center;
      background-color: rgb(230,240,220);
     border-radius: 5px 5px 5px 5px; 
      color: rgb(60,120,75);
      padding: 5px;
      width: 500px;
      -webkit-box-shadow: 0px 0px 3px 1px rgba(60,120,75,0.75);
      -moz-box-shadow: 0px 0px 3px 1px rgba(60,120,75,0.75);
      box-shadow: 0px 0px 3px 1px rgba(60,120,75,0.75);

    }

  </style>

</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top" >
  <div class="container-fluid" >
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="">
      <div class="whiteColor2">
      <span class="glyphicon glyphicon-home"></span>
      SIEP
      </div>
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" >
      <ul class="nav navbar-nav ">
        
        <li class="backgroundLi">
            <a href="index.jsp"  target="_self">
                <!--id="btnNew" data-toggle="modal" data-target="#alertNew">-->
        <div class="whiteColor">
          <span class="glyphicon glyphicon-plus"></span> Nuevo  
        </div>
        
        </a>
        </li>
        <li class="backgroundLi">
        <a href="#" id="btnModify" data-toggle="modal" data-target="#alertModify">
        <div class="whiteColor">
        <span class="glyphicon glyphicon-pencil"></span> Modificar
        </div>
        </a>
        </li>
        <li class="backgroundLi">
        <a href="#" id="btnView" data-toggle="modal" data-target="#alertView">
        <div class="whiteColor">
        <span class="glyphicon glyphicon-eye-open"></span> Ver
        </div>
        </a>
        </li>
        <li class="backgroundLi">
            <a href="#" id="btnDelete" data-toggle="modal" data-target="#alertDelete">
                <div class="whiteColor">
                    <span class="glyphicon glyphicon-erase"></span> Eliminar
                </div>
            </a>
        </li>
        <li class="backgroundLi">
        <a href="#" id="btnSave" class="dropdown" data-toggle="dropdown">
           <%-- data-toggle="modal" data-target="#alertSave"> --%>
        <div class="whiteColor">
        <span class="glyphicon glyphicon-floppy-disk"></span> Guardar
        <span class="caret"></span>
        </div>
        </a>
            
            <ul class="dropdown-menu">
                <li><a id="save1" href="#">Save #1</a></li>
                <li><a id="saveGen" href="#">Save #2</a></li>
            </ul>
            
        </li>
        
        <li class="backgroundLi" >
            <a >
                <div class="whiteColoreV1" id="feedback" >
                    
                </div>
            </a>
        </li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li>
        <a href="#" >
        <div class="whiteColor">
          
        </div>  
        </a>
      </li>
        <li class="backgroundLi">
        <a href="#" id="btnMessages" class="dropdown" data-toggle="dropdown">
        <div class="whiteColor">
        <span id="numberNotify" class="badge"></span>
        <span class="glyphicon glyphicon-bell"></span>
        <span class="caret"></span>
        </div>
        </a>
        <ul class="dropdown-menu">
          <li><a href="#">Alerta #1</a></li>
          <li><a href="#">Alerta #2</a></li>
          <li><a href="#">Alerta #3</a></li>
        </ul>
        </li>
        <li class="backgroundLi">
           <a href="#">
           <div class="avatarUser">
           <span>
               <img class="img-rounded" src="recursos/images/791301.jpg" style="width:18px">
           </span>  
           </div>
           
           </a>
        </li>
        <li><a></a></li>
      </ul>
    </div>
  </div>
</nav>



    <div class="container">    

        
        <div class="row content ">
            <div class="tab-content">
                <div class="tab-pane fade in active">
                    <br><br>
                    <h3> </h3>
                    
                    <br>
                </div>
            </div>
            
            <ul class="nav nav-tabs">
                <li class="active"><a id="opS1" data-toggle="tab" href="#homeFrm"><span class="glyphicon glyphicon-folder-close greenColor"></span> DATOS GENERALES</a></li>
                <li><a id="opS2" data-toggle="tab" href="#menuFrm1"><span class="glyphicon glyphicon-folder-close greenColor"></span> DIAGNÓSTICO Y PROBLEMA</a></li>
                <li><a id="opS3" data-toggle="tab" href="#menuFrm2"><span class="glyphicon glyphicon-folder-close greenColor"></span> OBJETIVOS</a></li>
                <li><a id="opS4" data-toggle="tab" href="#menuFrm3"><span class="glyphicon glyphicon-folder-close greenColor"></span> VIABILIDAD Y SOSTENIBILIDAD</a></li>
                <li><a id="opS5" data-toggle="tab" href="#menuFrm4"><span class="glyphicon glyphicon-folder-close greenColor"></span> PRESUPUESTO</a></li>
                <li><a id="opS6" data-toggle="tab" href="#menuFrm5"><span class="glyphicon glyphicon-folder-close greenColor"></span> MARCO TEORICO</a></li>
                <li><a id="opS7" data-toggle="tab" href="#menuFrm6"><span class="glyphicon glyphicon-folder-close greenColor"></span> ESTRATEGIA Y EVALUACIÓN</a></li>
            </ul>
            
            <div class="tab-content ">
                <div id="homeFrm" class="tab-pane fade in active divShadow">
                    <h3> </h3>
                    <%@include file="forms/1_form.jsp" %>

                </div>
                <div id="menuFrm1" class="tab-pane fade divShadow">
                    <h3> </h3>
                    <%@include file="forms/2_form.jsp" %>
                </div>
                <div id="menuFrm2" class="tab-pane fade divShadow">
                    <h3> </h3>
                    <%@include file="forms/3_form.jsp" %>
                </div>
                <div id="menuFrm3" class="tab-pane fade divShadow">
                    <h3> </h3>
                    <%@include file="forms/4_form.jsp" %>
                </div>
                <div id="menuFrm4" class="tab-pane fade divShadow">
                    <h3> </h3>
                    <%@include file="forms/5_form.jsp" %>
                </div>
                <div id="menuFrm5" class="tab-pane fade divShadow">
                    <h3> </h3>
                    <%@include file="forms/6_form.jsp" %>
                </div>
                <div id="menuFrm6" class="tab-pane fade divShadow">
                    <h3> </h3>
                    <%@include file="forms/7_form.jsp" %>
                </div>
            </div>
        
        </div>
<!--        <div class="row content ">

            <div class="col-sm-3 sidenav purpleColor">

                <br><br><br>
                <div class="menuFixed ">
                <div class="panel-group" id="accordion" >
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" id="btn1">
                                    <span class="glyphicon glyphicon-folder-close greenColor"></span>  DATOS GENERALES DEL PROYECTO
                                </a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse">
                            <div class="panel-body">
                                1.1. Nombre del Proyecto
                                <br>
                                1.2. CUP
                                <br>
                                1.3. Entidad Ejecutora
                                <br>
                                1.4. Cobertura y Localización
                                <br>
                                1.5. Plazo de Ejecución
                                <br>
                                1.6. Monto
                                <br>
                                1.7. Sector y Tipo de Proyecto
                                <br>
                                1.8. Responsable del Proyecto
                                <br>
                                1.9 Categorización del proyecto
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2" id="btn2">
                                    <span class="glyphicon glyphicon-folder-close greenColor"></span> DIAGNÓSTICO Y PROBLEMA
                                </a>
                            </h4>
                        </div>
                        <div id="collapse2" class="panel-collapse collapse">
                            <div class="panel-body"> 
                                2.1. Descripción de la situación actual del área
                                <br> 
                                2.2. Identificación, descripción y diagnóstico
                                <br> 
                                2.3. Línea Base del Proyecto
                                <br> 
                                2.4. Análisis de Oferta y Demanda
                                <br> 
                                2.5. Identificación y caracterización de la población
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3" id="btn3">
                                    <span class="glyphicon glyphicon-folder-close greenColor"></span> OBJETIVOS DEL PROYECTO
                                </a>
                            </h4>
                        </div>
                        <div id="collapse3" class="panel-collapse collapse">
                            <div class="panel-body">
                                3.1. Objetivo general y objetivos específicos
                                <br>
                                3.2. Indicadores de resultado
                                <br>
                                3.3. Matriz de Marco Lógico
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse4" id="btn4">
                                    <span class="glyphicon glyphicon-folder-close greenColor"></span> VIABILIDAD Y PLAN DE SOSTENIBILIDAD
                                </a>
                            </h4>
                        </div>
                        <div id="collapse4" class="panel-collapse collapse">
                            <div class="panel-body">
                                4.1. Viabilidad técnica
                                <br>
                                4.2. Viabilidad Financiera y/o Económica
                                <br>
                                4.3. Análisis de sostenibilidad
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse5" id="btn5">
                                    <span class="glyphicon glyphicon-folder-close greenColor"></span> PRESUPUESTO
                                </a>
                            </h4>
                        </div>
                        <div id="collapse5" class="panel-collapse collapse">
                            <div class="panel-body">
                                5.1. Matriz
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse6" id="btn6">
                                    <span class="glyphicon glyphicon-folder-close greenColor"></span> MARCO TEORICO
                                </a>
                            </h4>
                        </div>
                        <div id="collapse6" class="panel-collapse collapse">
                            <div class="panel-body">
                                6.1. Marco legal del Proyecto
                                <br>
                                6.2. Estructura operativa  
                                <br>
                                6.3. Acuerdos institucionales
                                <br>
                                6.4. Cronograma valorado componentes/actividades
                                <br>
                                6.5. Origen de los insumos

                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse7" id="btn7">
                                    <span class="glyphicon glyphicon-folder-close greenColor"></span> ESTRATEGIA DE SEGUIMIENTO Y EVALUACIÓN
                                </a>
                            </h4>
                        </div>
                        <div id="collapse7" class="panel-collapse collapse">
                            <div class="panel-body">
                                7.1. Monitoreo de la Ejecución
                                <br>
                                7.2. Evaluación de Impactos y Resultados
                                <br>
                                7.3. Actualización de la línea base
                            </div>
                        </div>
                    </div>

                </div> 
                </div>

            </div>
            <div class="col-sm-9 text-left purpleColor"> 

                <p></p><p></p>
                <br><br><br>
                
                <div id="section0" ></div>
                <div id="section1" class="divShadow" ></div>
                <div id="section2" class="divShadow" ></div>
                <div id="section3" class="divShadow" ></div>
                <div id="section4" class="divShadow" ></div>
                <div id="section5" class="divShadow" ></div>
                <div id="section6" class="divShadow" ></div>
                <div id="section7" class="divShadow" ></div>
            </div>

        </div>-->
    </div>

<footer class="navbar navbar-default navbar-fixed-bottom" style="display:none;">
  
      <div class="collapse navbar-collapse" id="myNavbarBottom" >


      <ul class="nav navbar-nav">
        
        <li>
        <a>
<div id="alertInfo" class="whiteColor" >
  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  Formulario Generado Correctamente.
</div>
</a>
        </li>

               
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li>
        <a href="#" >
        <div class="whiteColor">
        <span class="glyphicon glyphicon-arrow-up"></span> Subir
        </div>
        </a>
        </li>

      </ul>
    </div>

</footer>

  <!-- Nuevo -->
  <div class="modal fade" id="alertNew" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Nuevo</h4>
        </div>
        <div class="modal-body">
          <p>Nuevo formulario creado correctamente.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>

    <!-- Modificar -->
  <div class="modal fade" id="alertModify" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modificar</h4>
        </div>
        <div class="modal-body">
          <p>Formulario listo para modificación.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>

    <!-- Ver -->
  <div class="modal fade" id="alertView" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Ver</h4>
        </div>
        <div class="modal-body">
          <p>A continuación se presenta PDF con la información pertinente.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>

    <!-- Eliminar -->
  <div class="modal fade" id="alertDelete" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Eliminar</h4>
        </div>
        <div class="modal-body">
          <p>Formulario eliminado correctamente.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Guardar -->
  <div class="modal fade" id="alertSave" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>This is a small modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  </div>



</body>
</html>


