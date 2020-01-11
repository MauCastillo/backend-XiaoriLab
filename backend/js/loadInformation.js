jQuery.noConflict();
const pathPhp = "/php/functions.php";

function list_documents_query(funcion, parametros) {
    jQuery("#cuerpo").html("");
    jQuery("#employee_grid").hide();
    jQuery.post(pathPhp, {
        "function": funcion,
        "parametros": {
            'id': parametros
        }

    }, function (response) {
        console.log(" >>> Data response ", response)
        jQuery("#employee_grid").show();
        jQuery("#_editable_table").html("");
        /* Organizacion de  elementos    */
        let info = jQuery.parseJSON(response)

        ItemsLength = info.length;
        if (ItemsLength != 0) {
            cacheDocumect = info;
            jQuery.each(info, function (index, elem) {
                jQuery("#_editable_table").append('<tr>');
                jQuery("#_editable_table").append('<th scope="row">' + (index + 1) + '</th>');
                jQuery("#_editable_table").append('<td  contenteditable="true" onfocus="ActionUpdate(' + index + ')"  col-index="0" oldVal ="' + elem.id + '">' + elem.id + '</td>');
                jQuery("#_editable_table").append('<td contenteditable="true" onfocus="ActionUpdate(' + index + ')" style="text-transform: uppercase;" > ' + elem.date + '</td>')
                jQuery("#_editable_table").append('<td contenteditable="true" onfocus="ActionUpdate(' + index + ')">' + elem.title + '</td>');
                jQuery("#_editable_table").append('<td contenteditable="true" onfocus="ActionUpdate(' + index + ')">' + elem.summary + '</td>');
                jQuery("#_editable_table").append("</tr>");

            });
        }
    })
}

