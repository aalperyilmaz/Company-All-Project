
/*
function multipleSelectValues(){

    var selectedValues = $('#multiple_select').val();
    console.log(selectedValues+"--VALUESSSSSS")
}
multipleSelectValues()

$('#multiple_select').change(function(){
    var value = $(this).val();
    console.log(value+"--VALUESSSSSS")
});


$('#multipleSelect').change(function(){
    var value = $(this).val();
    console.log(value+"--Select PAGE values")
});

$('#multipleSelect').change(function(){
    var value = $(this).val();
    console.log(value+"--Select PAGE values")
});*/










function listAnnounce(){


    $.ajax({
        url: './gallery/listed',
        type: 'GET',
        contentType : 'application/json; charset=utf-8',
        success: function (datas) {
            console.log(datas)
            console.log("SUCCES")
            createRow(datas)
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })
}
listAnnounce()




let globalArr = []
function createRow(data){
    console.log("Succcessssss cretate row"+data)
    let html = ``

    for (let i = 0; i < data.datas.length; i++) {
        globalArr = data.datas
        const itm = data.datas[i]

        html += `<tr>
<td>`+itm+`</td>
       <td>
       <div class="ui buttons">
  <div class="ui button"    onclick=" fncProdelete(`+i+`)">Sil</div>
  <button class="ui button" onclick="duzenle(`+i+`)">Detay</button>
  
</div>
              </td>
                  </tr>`;
    }
    $('#tableRow').html(html);
}






let globalArrModal = []
function createModalRow(data){
    console.log("Succcessssss cretateModal row"+data)
    let html = ``

    for (let i = 0; i < data.datas.length; i++) {
        globalArrModal = data.datas
        const itm = data.datas[i]
        html += `<tr>
<td>`+itm.galleryComment+`</td>
<td>`+itm.galleryName+`</td>
<td><img style="max-width: 300px; max-height: 300px" src= "/uploads/gallery/`+itm.galleryUrl+`"></td>
       <td>
       <div class="ui buttons">
  <button class="ui button" onclick="fncProductDelete(`+itm.galleryId+`)" >Sil</button>
 
</div>
              </td>
                  </tr>`;
    }
    $('#tableModalRow').html(html);
}



function  duzenle(id){
    const itm=globalArr[id]

    $.ajax({
        url: './gallery/detail/listed/'+itm,
        type: 'GET',
        contentType : 'application/json; charset=utf-8',
        success: function (datas) {
            console.log(datas)
            console.log("SUCCES")
            createModalRow(datas)
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })


    $(function(){



console.log(itm)
        $(".duzenle").modal('show');
    });
    $(".duzenle").modal({
        closable: true
    });



}



function fncProductDelete(pid){
    let answer=confirm("Silmek istediginizden eminmisiniz");
    if (answer){
        $.ajax({
            url: "./gallery/delete/"+pid,
            type: 'GET',
            dataType: 'text',
            success: function (data){
                if (data !="0"){
                   window.location.reload()
                    alert("silme islemi başarılı")
                }else {
                    alert("silme islemi sirasinda hata olustu")   ;
                }
            },
            error:function (err) {
                console.log(err);
            }
        })


    }
}


function fncProdelete( pid){
    const item=globalArr[pid]
    console.log("GALERRY COMMNET"+item)
    let answer=confirm("Silmek istediginizden eminmisiniz");

    if (answer){
        $.ajax({
            url: "./gallery/deletebyname/"+item,
            type: 'GET',
            dataType: 'text',
            success: function (data){
                if (data !="0"){
                    window.location.reload()
                    alert("silme islemi başarılı")
                }else {
                    alert("silme islemi sirasinda hata olustu")   ;
                }
            },
            error:function (err) {
                console.log(err);
            }
        })


    }
}