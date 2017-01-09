$(document).ready(function() {
    var iCnt = 0;
    var matInptAdd = [];
    var matObjAdd = [];
    var container = $(document.createElement('div'));
    //var container2 = $(document.createElement('table'));
    
//    $("input[id ^= 'tb']").on('change', function() {
//        alert($("input[id ^= 'tb']").val());
//    });
//    $(".specificObjs").keypress(function(){
//        $("#tbObj"+$(this).attr("id")).html($("#tb1").val());
//    });

    $("#objtModules").click(function(){
        $("#resultSaveFrm").html("");
        var failObj = 0;
        $.each(matInptAdd, function( index, value ) {
            //aquí ingregar la función para guardado en la DB
            var newIndex = index+1;
            
            if ($("#"+value).val() !== ""){
                $("#titleObj"+newIndex).val($("#"+value).val());
                
                $("#resultSaveFrm").append("<pre>"+index+" - " +$("#"+value).val() +"</pre>");
                $("#resultSaveFrm").append("<pre class='alert alert-success'> Objetivo Específico "+newIndex+" Agregado Correctamente." +"</pre>");
            }else{
                $("#resultSaveFrm").append("<pre class='alert alert-danger'> Es necesario llenar el Objetivo Específico "+newIndex+" para continuar." +"</pre>");
                failObj++;
            }
            
            
            
        });
        if (failObj === 0){
                $("#resultSaveFrm").append("<pre class='alert alert-success'> <span class='glyphicon glyphicon-ok'></span> Objetivo(s) Específico(s) Guardados Correctamente." +"</pre>");
            }
//        var option = '';
//        for (var i=0;i<matObjAdd.length;i++){
//           option += '<option value="'+ matObjAdd[i] + '">' + matObjAdd[i] + '</option>';
//        }
//        $('#main').append(option);
    });
    $('#addInput').click(function () {
        if (iCnt < 5) {
            iCnt = iCnt + 1;
//            $(container2).attr('class', 'table table-hover');
            $(container).append('<input type=text class="form-control specificObjs" title="Por favor ingrese un objetivo." aria-label="..." placeholder="Objetivo específico '+ iCnt +'" id=tb' + iCnt + ' required />');
//            $(container2).append('<tr id="tbObj' + iCnt+'"><td colspan="3" >Objetivo Específico '+iCnt+' </td></tr>'+
            $("#ind_result").append('<tr id="tbObj' + iCnt+'"><td colspan="3" ><input id="titleObj'+iCnt+'" type="text" class="form-control" aria-label="..." value="Objetivo Específico '+iCnt+'." readonly> </td></tr>'+
	    '<tr><td><input type="text" class="form-control" id="objInd' + iCnt+'" required /></td>'+
	    '<td><input type="text" class="form-control" id="objtAim' + iCnt+'" required /></td>'+
	    '<td><input type="text" class="form-control" id="objtMeta' + iCnt+'" required /></td>'+'</tr>');

            matInptAdd.push('tb' + iCnt);
            
            $('#main').after(container);
//            $('#ind_result').after(container2);
            
            $('#delInput').removeAttr('disabled');
            $("#feedback").html(matInptAdd);
        }
        else { 
            $("#feedback").html('No. Máximo de Objetivos Específicos es: '+iCnt);
            $('#addInput').attr('disabled', 'disabled');
        }
    });

    $('#delInput').click(function () { 
        $("#feedback").html("");
        if (iCnt != 0) {
            $('#addInput').removeAttr('disabled');
            $('#tb' + iCnt).remove();
//            $('#objInd' + iCnt).remove(); $('#objtAim' + iCnt).remove(); $('#objtMeta' + iCnt).remove();
            $('#ind_result tr:last-child').remove();
            $('#ind_result tr:last-child').remove();
            iCnt = iCnt - 1;
            matInptAdd.pop();
        }

        if (iCnt == 0) {
            $(container).empty();
            $('#delInput').attr('disabled', 'disable');
            $(container).remove();
            $('#btSubmit').remove();
        }
        $("#feedback").html(matInptAdd);
    });

    $('#btRemoveAll').click(function () { 

        $(container).empty();
        $(container).remove();
        $('#btSubmit').remove();
        iCnt = 0;
        $('#addInput').removeAttr('disabled');
        $('#addInput').attr('class', 'bt');

    });
});
