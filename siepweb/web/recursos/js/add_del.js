$(document).ready(function() {
    var iCnt = 0;
    var matInptAdd = [];
    var container = $(document.createElement('div'));
    

    $("#muestraT").click(function(){
        $.each(matInptAdd, function( index, value ) {
            //aquí ingregar la función para guardado en la DB
            $("#result3").append( $("#"+value).val() +"\n");
        });
    });
    $('#addInput').click(function () {
        if (iCnt < 5) {
            iCnt = iCnt + 1;
            $(container).append('<input type=text class="form-control" aria-label="..." placeholder="Objetivo específico '+ iCnt +'" id=tb' + iCnt + ' />');
            matInptAdd.push('tb' + iCnt);
            $('#main').after(container);
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
