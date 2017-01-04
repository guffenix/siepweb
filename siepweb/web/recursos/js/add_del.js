$(document).ready(function() {
    var iCnt = 0;
    var matInptAdd = [];
    var container = $(document.createElement('div'));
    var container2 = $(document.createElement('table'));
    

    $("#muestraT").click(function(){
        $.each(matInptAdd, function( index, value ) {
            //aquí ingregar la función para guardado en la DB
            $("#result3").append( $("#"+value).val() +"\n");
        });
    });
    $('#addInput').click(function () {
        if (iCnt < 5) {
            iCnt = iCnt + 1;
            $(container2).attr('class', 'table table-hover');
            $(container).append('<input type=text class="form-control" aria-label="..." placeholder="Objetivo específico '+ iCnt +'" id=tb' + iCnt + ' />');
//            $(container2).append('<tr id="tbObj' + iCnt+'"><td colspan="3" >Objetivo Específico '+iCnt+' </td></tr>'+
            $("#ind_result").append('<tr id="tbObj' + iCnt+'"><td colspan="3" >Objetivo Específico '+iCnt+' </td></tr>'+
	    '<tr><td><input type="text" class="form-control" id="objInd' + iCnt+'" ></td>'+
	    '<td><input type="text" class="form-control" id="objtAim' + iCnt+'" ></td>'+
	    '<td><input type="text" class="form-control" id="objtMeta' + iCnt+'" ></td>'+'</tr>');

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
