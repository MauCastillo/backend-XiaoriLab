jQuery.noConflict();

let TempIndex = 0;
let numeberNeto = 0;
let numberloadSelect = 0;
function generateItemPage() {
    if (ItemsLength == 0) {
        if (pageNumber > 1) {
            --pageNumber;
            listAllDoc();
        }
    }

    numberloadSelect = parseInt(jQuery('#item_number').val());
    let paginasDisponible = Math.ceil(numeberNeto / numberloadSelect);

    pageForm.html("");
    pageForm.show();
    pageForm.append(' <a id=page onClick = "afterPage()" >&laquo;</a>');
    step = 0;
    for (var i = 0; i < paginasDisponible; i++) {
        pageForm.append(`<a onclick="loadUniquePage(${i}, ${step})" id=pageIndex${i}>  ${(i + 1)} </a>`);
        step += numberloadSelect;
    }
    pageForm.append(' <a id=page onClick = "nextPage()" >&raquo;</a>');

}

const loadUniquePage = (index, counter) => {
    TempIndex = index;
    list_existing_documents(counter);
    numberloadSelect = parseInt(jQuery('#item_number').val());
    let paginasDisponible = Math.ceil(numeberNeto / numberloadSelect);

    jQuery("#pagelabel_first, #pagelabel_second").html("");
    jQuery("#pagelabel_first, #pagelabel_second").append(`${index + 1}/${paginasDisponible} pages`);


    //listAllDoc();
    jQuery("html, body").animate({
        scrollTop: 0
    }, "slow");

}

const initation = () => {
    jQuery.post(pathPhp, {
        'function': 'count_worldpay',
        'parametros': {}
    }, function (response) {
        let info = jQuery.parseJSON(response)
        numeberNeto = parseInt(info[0].record)
        generateItemPage()
    });
}
