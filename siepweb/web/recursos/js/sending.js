$(document).ready(function(){
        $("#btnNew").click(function(){
            //("#nameProject").load("1_form.html #nameProject");
            //alert("mensaje de prueba:"+document.getElementById($("#nameProject")).value);
            $("#nameProject").val("");
            //$("#tiempo").val("");
            //$("#todoOk").html("Esperando para calcular...");
            alert("boton New");
        });
        $("#btnSave").click(function()
        {
           
           var nameProject = $("#nameProject").val();
           var numberProjectP = $("#numberProject").val();
           alert("botonSave"+nameProjectP+": "+numberProjectP);
           
           $.ajax({
               type:'POST',
               url:'addFormDatGen.jsp',
               //data:('nameProject='+nameProject+'&basic-addon2='+cup+'&implementingEntity'+implementingEntity+'&executingUnits'+executingUnits),
               data:('nameProject='+nameProject+'&numberProject='+numberProjectP),
                success:function(result){
                    if(result==1){
                      alert("Enviado");
                    }
                    else alert("No Enviado");
                }
           })
        });
});


