$(document).ready(function() {

    $("#send1").submit(function(){
        alert("enviado frm1");
    });
     $("#save2").click(function()
     {
         var coverage = $('input:radio[name=frm1]:checked').val();
         alert(coverage);
     });
     $("#save1").click(function(){
        $("#result").html("Nuevo item");
        var nameProject = $('#nameProject').val();
        var numberCUP = $('#numberCUP').val();
        var executingEntity = $('#implementingEntity').val();
        var executingUnit = $('#executingUnits').val();
        var coverage = $('input:radio[name=frm1]:checked').val();
        var planningArea = $('#znPln').val();//Zona de planificacion
        var province = $('#prov').val();
        var canton = $('#canton').val();
        var parish = $('#parroqui').val();//parroquia
        var filingDate = $('#filingDate').val();//Fecha de presentacion
        var startDate = $('#startDate').val();//Fecha de inicio
        var finishDate = $('#finishDate').val();//Fecha de finalizacion
        var durationM = $('#durat').val();//Duracion
        var IVA = $('#iva').val();//
        var universityBudget = $('#universityBudget').val();//Presupuesto por Aporte de Universidad
        var sponsorBudget = $('#sponsorBudget').val();//Presupuesto de Entidad Auspiciante/Beneficiaria
        var totalBudget = $('#totalBudget').val();//Presupuesto total
        var budget2014 = $('#budget2014').val();//Presupuesto 2014??
        var budget2015 = $('#budget2015').val();//Presupuesto 2015??
        var budget2016 = $('#budget2016').val();//Presupuesto 2016??
        var budget2017 = $('#budget2017').val();//Presupuesto 2017??
        var totalAnnualBudget = $('#totalAnnualBudget').val();//Presupuesto anual total
        var sector = $('#sector').val();
        var subSector = $('#subSector').val();
        var namesPersonInCharge = $('#namesPersonInCharge').val();//Nombres y Apellidos del responsable del proyecto
        var positionPersonInCharge = $('#positionPersonInCharge').val();//Cargo del responsable del proyecto
        var departmentPersonInCharge = $('#departmentPersonInCharge').val();//Departamento del responsable del proyecto
        var emailPersonInCharge = $('#emailPersonInCharge').val();//Email del responsable del proyecto
        var phonePersonInCharge = $('#phonePersonInCharge').val();//Cargo del responsable del proyecto
        var categorizationProject = $('#categorizationProject').val();//Categorizaciondel proyecto
         
         
         $.ajax({
               type:'post',
               url:'save/1_saveFormDatGen.jsp',
               data:"nameProject="+nameProject+"&numberCUP="+numberCUP+"&executingEntity="+executingEntity+
                       "&executingUnit="+executingUnit+"&coverage="+coverage+"&planningArea="+planningArea+
                       "&province="+province+"&canton="+canton+"&parish="+parish+
                       "&filingDate="+filingDate+"&startDate="+startDate+"&finishDate="+finishDate+
                       "&durationM="+durationM+"&iva="+IVA+"&universityBudget="+universityBudget+
                       "&sponsorBudget="+sponsorBudget+"&totalBudget="+totalBudget+"&budget2014="+budget2014+
                       "&budget2015="+budget2015+"&budget2016="+budget2016+"&budget2017="+budget2017+
                       "&totalAnnualBudget="+totalAnnualBudget+"&sector="+sector+"&subSector="+subSector+
                       "&namesPersonInCharge="+namesPersonInCharge+"&positionPersonInCharge="+positionPersonInCharge+"&departmentPersonInCharge="+departmentPersonInCharge+
                       "&emailPersonInCharge="+emailPersonInCharge+"&phonePersonInCharge="+phonePersonInCharge+"&categorizationProject="+categorizationProject,
               success:function(respuesta)
               {
                   $("#result").html(respuesta);
               }
           })
    });
    
    $("#section0").load('forms/0_form.html');
    $("#section1").load('forms/1_form.jsp');
    $("#section2").load('forms/2_form.jsp');
    $("#section3").load('forms/3_form.jsp');
    $("#section4").load('forms/4_form.jsp');
    $("#section5").load('forms/5_form.jsp');
    $("#section6").load('forms/6_form.jsp');
    $("#section7").load('forms/7_form.jsp');

    var numberNotify = 0;
    
    $("#sectionNotify").hide();
    
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
      $("#sectionNotify").html("<span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true'></span>  Nuevo Formulario Creado Correctamente!");
      numberNotify = numberNotify + 1;
      $("#numberNotify").html(numNotify(numberNotify));
      $("#sectionNotify").show();
      $("#sectionNotify").delay(3000).hide(600);
    });
    $("#btnModify").click(function(event){
      $("#sectionNotify").html("<span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true'></span>  Formulario listo para modificar");
      numberNotify = numberNotify + 1;
      $("#numberNotify").html(numNotify(numberNotify));
      $("#sectionNotify").show();
      $("#sectionNotify").delay(3000).hide(600);
    });
    $("#btnView").click(function(event){
      $("#sectionNotify").html("<span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true'></span>  Presentación del Formulario en PDF generada. ");
      numberNotify = numberNotify + 1;
      $("#numberNotify").html(numNotify(numberNotify));
    });
    $("#btnDelete").click(function(event){
      $("#sectionNotify").html("<span class='glyphicon glyphicon-remove' aria-hidden='true'></span>  Información de Formulario Eliminada Correctamente.");
      numberNotify = numberNotify + 1;
      $("#numberNotify").html(numNotify(numberNotify));
    });
    $("#btnSave").click(function(event){
      $("#sectionNotify").html("<span class='glyphicon glyphicon-ok' aria-hidden='true'></span>  Nueva Información de Formulario Guardada Correctamente!");

      numberNotify = numberNotify + 1;
      $("#numberNotify").html(numNotify(numberNotify));
    });
    $("#btnMessages").click(function(event){
      $("#sectionNotify").html("<span class='glyphicon glyphicon-exclamation-sign' aria-hidden='true'></span>  Revisión del estado del proyecto!");
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
