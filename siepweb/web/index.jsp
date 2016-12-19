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
      background-color: rgb(75,95,105);
      /*//50,50,80);*/
      
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
      -webkit-box-shadow: 0px 2px 6px 4px rgba(75,95,105,1);
      -moz-box-shadow: 0px 2px 6px 4px rgba(75,95,105,1);
      box-shadow: 0px 2px 6px 4px rgba(75,95,105,1);
    }

    #menuTitle{
      
      margin:0px; 
      padding: 0px;
      width: 100%;
      height: 100%;

background: rgba(75,95,105,1);
background: -moz-linear-gradient(top, rgba(75,95,105,1) 0%, rgba(75,95,105,1) 50%, rgba(255,255,255,1) 100%);
background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(75,95,105,1)), color-stop(50%, rgba(75,95,105,1)), color-stop(100%, rgba(255,255,255,1)));
background: -webkit-linear-gradient(top, rgba(75,95,105,1) 0%, rgba(75,95,105,1) 50%, rgba(255,255,255,1) 100%);
background: -o-linear-gradient(top, rgba(75,95,105,1) 0%, rgba(75,95,105,1) 50%, rgba(255,255,255,1) 100%);
background: -ms-linear-gradient(top, rgba(75,95,105,1) 0%, rgba(75,95,105,1) 50%, rgba(255,255,255,1) 100%);
background: linear-gradient(to bottom, rgba(75,95,105,1) 0%, rgba(75,95,105,1) 50%, rgba(255,255,255,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#323250', endColorstr='#ffffff', GradientType=0 );

    }

    .descriptiveText{
      font-size: 1.5em;
      text-shadow: 3px 3px 2px #000;
      color: #fff;
    }

    .imagenSelected:hover{
      
      cursor: pointer;

    }
    .divItem{
      padding: 5px;
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

    $("#frm1").click(function(event){
      window.location.href = "ivs.jsp";
    });
    $("#frm2").click(function(event){
      window.location.href = "ivr.jsp";
    });
    $("#frm3").click(function(event){
      window.location.href = "edu.jsp";
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
      <div class="whiteColor">
      <span class="glyphicon glyphicon-home"></span>
      SISTEMA INTEGRADO DE EJECUCIÓN PRESUPUESTARIA
      </div>
      </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" >

      <ul class="nav navbar-nav navbar-right">
      <li>
        <a href="#" >
        <div class="whiteColor">
          
        </div>  
        </a>
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



<div class="container-fluid text-center">    
  <div class="row content">

  <div id="menuTitle">
  <div class="col-sm-12">
  <br>
  <img src="recursos/images/logoPoa.png" style="width:30%;">  
  </div>
    <div id="frm1" class="col-sm-4 divItem">
    <div class="imagenSelected">
    <img src="recursos/images/frm1.png">
    
    </div>
    <br>
      <div class="descriptiveText">
      PROYECTOS DE INVESTIGACIÓN</div>
    </div>

    <div id="frm2" class="col-sm-4">
    <div class="imagenSelected">
    <img src="recursos/images/frm2.png">
    </div><br>
      <div class="descriptiveText">
      PROYECTOS DE INVERSIÓN</div>
    </div>

    <div id="frm3" class="col-sm-4">
    <div class="imagenSelected">
    <img src="recursos/images/frm3.png">
    </div><br>
      <div class="descriptiveText">
      PROYECTOS DE EDUCACIÓN</div>
    </div>
  </div>

  </div>
</div>

<footer class="navbar navbar-default navbar-fixed-bottom">
  
      <div class="collapse navbar-collapse" id="myNavbarBottom" >

      <ul class="nav navbar-nav navbar-right">
        <li>
          <a>
          <div id="alertInfo" class="whiteColor" >
            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
            POA UTICS 2016.
          </div>
          </a>
        </li>
      </ul>
    </div>

</footer>


</body>
</html>

