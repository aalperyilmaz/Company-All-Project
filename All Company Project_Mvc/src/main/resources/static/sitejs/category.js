



let globalArr = []
function createRow(data){
    console.log("Succcessssss cretate row"+data)
    let html = ``

    for (let i = 0; i < data.length; i++) {
        globalArr = data
        const itm = data[i]

        html += `<tr>
<td>`+itm.categoryName+`</td>
       <td>
       <div class="ui buttons">
  <div class="ui button"    onclick=" fncProdelete(`+i+`)">Sil</div>
  
</div>
              </td>
                  </tr>`;
    }
    $('#tableRow').html(html);
}




let globalArr1 = []
function createRow1(data){
    console.log("Succcessssss cretate row"+data)
    let html = ``

    for (let i = 0; i < data.length; i++) {
        globalArr1 = data
        const itm = data[i]

        html += `<tr>
<td>`+itm.subCategoryName+`</td>
       <td>
       <div class="ui buttons">
  <div class="ui button"    onclick=" fncProdelete(`+i+`)">Sil</div> 
</div>
              </td>
                  </tr>`;
    }
    $('#tableRow_sub').html(html);
}



function listAnnounce(){


    $.ajax({
        url: './category/listCat',
        type: 'GET',
        contentType : 'application/json; charset=utf-8',
        success: function (data) {

            console.log("SUCCES List cat")
            console.log(data.datas)
            console.log("SUCCES List cat")
            createRow1(data.datas.content)
            console.log("SUCCES List cat")
            generate_table(data.datas.totalPages)
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })
}
listAnnounce()


function listAnnounce1(){


    $.ajax({
        url: './category/subCat',
        type: 'GET',
        contentType : 'application/json; charset=utf-8',
        success: function (data) {
            console.log(data)
            console.log("SUCCES sub cat")
            console.log(data.datas.content)
            console.log("SUCCES sub cat")
            createRow1(data.datas.content)
            generate_tables(data.datas.totalPages)
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })
}
listAnnounce1()
function generate_table(size) {
    var tr;
    $('#emp_body').html('');
    for (var i = 0; i < size; i++) {
        tr = $('<a/>');
        tr.append(`<a onclick=" pagination(`+i+`)" id='generated' value=`+i+` class=\"item\">
         `+i+` </a>`);
        $('#emp_body').append(tr);


    }
}
function generate_tables(size) {
    var tr;
    $('#emp_body_sub').html('');
    for (var i = 0; i < size; i++) {
        tr = $('<a/>');
        tr.append(`<a onclick=" pagination(`+i+`)" id='generated' value=`+i+` class=\"item\">
         `+i+` </a>`);
        $('#emp_body').append(tr);


    }






}