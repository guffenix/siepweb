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
  <link rel="icon" type="image/png" href="recursos/images/logoPoa.png">

  <style>

    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: rgb(50,50,80);
      
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

    .orangeColor{
      color: rgb(255,191,0);
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
    }

    .grayDarkColor:hover{
      color: rgb(0,45,140);
    }
    
    .whiteColor{
      color: rgb(255,255,255);
    }
    .whiteColor:hover{
      color: rgb(255,255,255);
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
      background-color: rgb(100,130,190);
    }

    .containerEdge{
      -webkit-box-shadow: 0px 2px 6px 4px rgba(50,50,80,1);
      -moz-box-shadow: 0px 2px 6px 4px rgba(50,50,80,1);
      box-shadow: 0px 2px 6px 4px rgba(50,50,80,1);
    }
  </style>

<script type="text/javascript">

  $(document).ready(function() {
    $("#section0").load('forms/0_form.html');
    $("#section1").load('forms/1_form.html');
    $("#section2").load('forms/2_form.html');
    $("#section3").load('forms/3_form.html');
    $("#section4").load('forms/4_form.html');
    $("#section5").load('forms/5_form.html');
    $("#section6").load('forms/6_form.html');
    $("#section7").load('forms/7_form.html');

    var numberNotify = 0;
    
    
    $("#btn1").click(function(event) {
      $("#section0").css("display","none");
      $("#section1").css("display","block");
      $("#section2").css("display","none");
      $("#section3").css("display","none");
      $("#section4").css("display","none");
      $("#section5").css("display","none");
      $("#section6").css("display","none");
      $("#section7").css("display","none");

    });

    $("#btn2").click(function(event){
      $("#section0").css("display","none");
      $("#section1").css("display","none");
      $("#section2").css("display","block");
      $("#section3").css("display","none");
      $("#section4").css("display","none");
      $("#section5").css("display","none");
      $("#section6").css("display","none");
      $("#section7").css("display","none");
    });

    $("#btn3").click(function(event){
      $("#section0").css("display","none");
      $("#section1").css("display","none");
      $("#section2").css("display","none");
      $("#section3").css("display","block");
      $("#section4").css("display","none");
      $("#section5").css("display","none");
      $("#section6").css("display","none");
      $("#section7").css("display","none");
    });

    $("#btn4").click(function(event){
      $("#section0").css("display","none");
      $("#section1").css("display","none");
      $("#section2").css("display","none");
      $("#section3").css("display","none");
      $("#section4").css("display","block");
      $("#section5").css("display","none");
      $("#section6").css("display","none");
      $("#section7").css("display","none");
    });

    $("#btn5").click(function(event){
      $("#section0").css("display","none");
      $("#section1").css("display","none");
      $("#section2").css("display","none");
      $("#section3").css("display","none");
      $("#section4").css("display","none");
      $("#section5").css("display","block");
      $("#section6").css("display","none");
      $("#section7").css("display","none");
    });

    $("#btn6").click(function(event){
      $("#section0").css("display","none");
      $("#section1").css("display","none");
      $("#section2").css("display","none");
      $("#section3").css("display","none");
      $("#section4").css("display","none");
      $("#section5").css("display","none");
      $("#section6").css("display","block");
      $("#section7").css("display","none");
    });

    $("#btn7").click(function(event){
      $("#section0").css("display","none");
      $("#section1").css("display","none");
      $("#section2").css("display","none");
      $("#section3").css("display","none");
      $("#section4").css("display","none");
      $("#section5").css("display","none");
      $("#section6").css("display","none");
      $("#section7").css("display","block");
    });

    $("#btnNew").click(function(event){
      $("#alertInfo").html("<span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true'></span>  Nuevo Formulario Creado Correctamente!");
      numberNotify = numberNotify + 1;
      $("#numberNotify").html(numNotify(numberNotify));
    });
    $("#btnModify").click(function(event){
      $("#alertInfo").html("<span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true'></span>  Formulario listo para modificar");
      numberNotify = numberNotify + 1;
      $("#numberNotify").html(numNotify(numberNotify));
    });
    $("#btnView").click(function(event){
      $("#alertInfo").html("<span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true'></span>  Presentación del Formulario en PDF generada. ");
      numberNotify = numberNotify + 1;
      $("#numberNotify").html(numNotify(numberNotify));
    });
    $("#btnDelete").click(function(event){
      $("#alertInfo").html("<span class='glyphicon glyphicon-remove' aria-hidden='true'></span>  Información de Formulario Eliminada Correctamente.");
      numberNotify = numberNotify + 1;
      $("#numberNotify").html(numNotify(numberNotify));
    });
    $("#btnSave").click(function(event){
      $("#alertInfo").html("<span class='glyphicon glyphicon-ok' aria-hidden='true'></span>  Nueva Información de Formulario Guardada Correctamente!");

      numberNotify = numberNotify + 1;
      $("#numberNotify").html(numNotify(numberNotify));
    });
    $("#btnMessages").click(function(event){
      $("#alertInfo").html("<span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true'></span>  Revisión del estado del proyecto!");
      numberNotify = 0;
      $("#numberNotify").html("");
    });


  });

function numNotify(numberNotify){

  if(numberNotify < 100){
    return numberNotify ;
  }else{
    return "+99";
  }
   
}

</script>

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
      <div class="greenColor">
      <span class="glyphicon glyphicon-home"></span>
      POA
      </div>
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" >
      <ul class="nav navbar-nav ">
        
        <li class="backgroundLi">
        <a href="#" id="btnNew" >
        <div class="whiteColor">
          <span class="glyphicon glyphicon-plus"></span> Nuevo  
        </div>
        
        </a>
        </li>
        <li class="backgroundLi">
        <a href="#" id="btnModify">
        <div class="whiteColor">
        <span class="glyphicon glyphicon-pencil"></span> Modificar
        </div>
        </a>
        </li>
        <li class="backgroundLi">
        <a href="#" id="btnView">
        <div class="whiteColor">
        <span class="glyphicon glyphicon-eye-open"></span> Ver
        </div>
        </a>
        </li>
        <li class="backgroundLi">
        <a href="#" id="btnDelete">
        <div class="whiteColor">
        <span class="glyphicon glyphicon-erase"></span> Eliminar
        </div>
        </a>
        </li>
        <li class="backgroundLi">
        <a href="#" id="btnSave">
        <div class="whiteColor">
        <span class="glyphicon glyphicon-floppy-disk"></span> Guardar
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
           <img class="img-rounded" src="https://avatars2.githubusercontent.com/u/791301?v=3&s=460" style="width:18px">
           </span>  
           </div>
           
           </a>
        </li>
        <li><a></a></li>
      </ul>
    </div>
  </div>
</nav>



<div class="container-fluid text-left">    
  <div class="row content">
    <div class="col-sm-3 sidenav" id="menuLeft">

    <br><br><br>
     <div class="panel-group" id="accordion" style="position: fixed;">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" id="btn1">
        <span class="glyphicon glyphicon-folder-close orangeColor"></span>  DATOS GENERALES DEL PROYECTO
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
        <span class="glyphicon glyphicon-folder-close orangeColor"></span> DIAGNÓSTICO Y PROBLEMA
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
        <span class="glyphicon glyphicon-folder-close orangeColor"></span> OBJETIVOS DEL PROYECTO
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
        <span class="glyphicon glyphicon-folder-close orangeColor"></span> VIABILIDAD Y PLAN DE SOSTENIBILIDAD
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
        <span class="glyphicon glyphicon-folder-close orangeColor"></span> PRESUPUESTO
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
        <span class="glyphicon glyphicon-folder-close orangeColor"></span> MARCO TEORICO
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
        <span class="glyphicon glyphicon-folder-close orangeColor"></span> ESTRATEGIA DE SEGUIMIENTO Y EVALUACIÓN
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
    <div class="col-sm-9 text-left "> 

    <p></p><p></p>
    <br><br><br>
    <div id="section0" ></div>
    <div id="section1" style="display: none"></div>
    <div id="section2" style="display: none"></div>
    <div id="section3" style="display: none"></div>
    <div id="section4" style="display: none"></div>
    <div id="section5" style="display: none"></div>
    <div id="section6" style="display: none"></div>
    <div id="section7" style="display: none"></div>
    </div>

  </div>
</div>

<footer class="navbar navbar-default navbar-fixed-bottom">
  
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


</body>
</html>

