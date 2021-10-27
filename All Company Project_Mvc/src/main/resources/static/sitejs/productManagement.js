







let select_id = 0
$('#product_edit').submit( (event) => {
    event.preventDefault();
///Formda post edilirken formun methodu  ve id si belirlenir
//id dünle methot post

    const productPrice= $("#productPrice").val();
    const productName=  $("#productName").val();
    const productShortComment=  $("#productShortComment").val();
    const productAddress=  $("#adress").val();
    const productCampaingComment=  $("#productCampaingComment").val();
    const productType=   $("#productType").val();
    const productLongitude=   $("#productLongitude").val();
    const productLatitude=   $("#productLatitude").val();
    const productCampaingStatus=   $("#productCampaingStatus").val();
    const productCampaingName=   $("#productCampaingName").val();
    const productLongComment=   $("#productLongComment").val();
    const categories=   $("#categories").val();
    const subcategories=   $("#subcategories").val();


/// bu değişkenlerde

    const probj={
        productPrice:productPrice,
        categories:categories,
        subCategory:subcategories,
        productLongComment:productLongComment,
        productCampaingName:productCampaingName,
        productCampaingStatus:productCampaingStatus,
        productLatitude:productLatitude,
        productCampaingComment:productCampaingComment,
        productLongitude:productLongitude,
        productType:productType,
        productAddress:productAddress,
        productShortComment:productShortComment,
        productName:productName
    }


    if ( select_id != 0 ) {
        // update
        probj["productId"] = select_id;

        console.log(probj.productId)
    }



    $.ajax({
        url:'./productManager/saveAndUpdate',
        type:'POST',
        data:JSON.stringify(probj) ,
        contentType: "application/json; charset=utf-8",
        dataType:'Json',

        success:function (data){
            if (data>0){

                alert("islem basarili")
                listproduct()
            }else {
                alert("islem sirasinda hata olstu")
            }

        },
        error:function (err){
            console.log(err)
            alert("islem sirasinda hata olustu... error log")
        }
    })



});














function listproduct(){


    $.ajax({
        url: './productManager/listed',
        type: 'GET',
        contentType : 'application/json; charset=utf-8',
        success: function (datas) {
            console.log(datas)
            console.log("SUCCES")
            createRow(datas)
            generate_table(parseInt(datas.pageSize))
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })
}
listproduct()




function generate_table(pageSize) {
    var tr;
    $('#emp_body').html('');
    for (var i = 0; i < pageSize; i++) {
        tr = $('<a/>');
        tr.append(`<a onclick=" pagination(`+i+`)" id='generated' value=`+i+` class=\"item\">
         `+i+` </a>`);
        $('#emp_body').append(tr);


    }
}




let globalArr = []
function createRow(data){
    console.log("Succcessssss cretate row"+data)
    /* const at = document.getElementById("pageNum").value;*/
    /*console.log(at)*/

    let html = ``

    for (let i = 0; i < data.datas.length; i++) {
        globalArr = data.datas
        const itm = data.datas[i]

        html += `<tr>
<td>`+itm.productName+`</td>
 <td>`+itm.productPrice+`</td>
  <td>`+itm.productAddress+`</td>
           
  <td>`+itm.productShortComment+`</td>
       <td>
 <div class="ui buttons">
  <button class="ui button" onclick="fncProdelete(`+itm.productId+`)">Sil</button>
  <button class="ui button" onclick="duzenle(`+i+`,`+itm.productId+`)">Düzenle</button>
  <button class="ui button" onclick="duzenleFoto(`+i+`,`+itm.productId+`)">Fotoğraflar</button>
  
</div>
              </td>
                  </tr>`;
    }
    $('#tableRow').html(html);
}



let globalArr2 = []
function createRow2(data){
    console.log("Succcessssss cretate row"+data)
    /* const at = document.getElementById("pageNum").value;*/
    /*console.log(at)*/

    let html = ``

    for (let i = 0; i < data.datas.length; i++) {
        globalArr = data.datas
        const itm = data.datas[i]

        html += `<tr>
<td>`+itm.productName+`</td>
 <td>`+itm.productPrice+`</td>
  <td>`+itm.productAddress+`</td>
           
  <td>`+itm.productShortComment+`</td>
       <td>
 <div class="ui buttons">
  <button class="ui button" onclick="fncProdelete(`+itm.productId+`)">Sil</button>
  <button class="ui button" onclick="duzenle(`+i+`,`+itm.productId+`)">Düzenle</button>
  <button class="ui button" onclick="duzenleFoto(`+i+`,`+itm.productId+`)">Fotoğraflar</button>
  
</div>
              </td>
                  </tr>`;
    }
    $('#tableRow2').html(html);
}



function pagination(data) {
    console.log(data)
    $.ajax({
        url: './productManager/pagelisted/' + data + '/5',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (datas) {
            console.log(datas)

            createRow(datas)
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })
}


function fncProdelete(pid){
    const item=globalArr[pid]
    console.log("----"+item)
    let answer=confirm("Silmek istediginizden eminmisiniz");

    if (answer){
        $.ajax({
            url: "./productManager/delete/"+item.productId,
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

function  duzenleFoto(id,db_id) {

    const itm = globalArr[id]
    select_id = db_id
    $(function () {
        console.log(select_id);


        $(".tests").modal('show');
    });
    $(".tests").modal({
        closable: true
    });
console.log(itm)
console.log(itm+"----------------")
console.log(itm.productImages)
    createModalRow(itm.productImages)
}





function  duzenle(id,db_id){

    const itm=globalArr[id]
    select_id=db_id
    $(function(){
        console.log(select_id);

        $(".test").modal('show');
    });
    $(".test").modal({
        closable: true
    });
    ////yukarıdaki modalı açtırmak
    generate_select(itm.categories)
    generate_selectSubcategory(itm.subCategory)

    $("#productPrice").val(itm.productPrice);
    $("#productName").val(itm.productName);
    $("#productShortComment").val(itm.productShortComment);
    $("#adress").val(itm.productAddress);
    $("#productLongComment").val(itm.productCampaingComment);
    $("#productType").val(itm.productType);
    $("#productLongitude").val(itm.productLongitude);
    $("#productLatitude").val(itm.productLatitude);
    $("#productCampaingStatus").val(itm.productCampaingStatus);
    $("#productCampaingName").val(itm.productCampaingName);
    $("#productCampaingComment").val(itm.productCampaingComment);
    $("#productLongComment").val(itm.productLongComment);
    $("#productId").val(itm.productId);



}

function generate_select(categories) {
    var tr;
    $('#categories').html('');
    for (var i = 0; i < categories.length; i++) {
        tr = $('<select/>');
        tr.append(`<option  value=`+categories[i].categoryId+`  >
         `+categories[i].categoryName+` </option>`);
        $('#categories').append(tr);


    }
}

function generate_selectSubcategory(subCategory) {
    var tsm;
    $('#subcategories').html('');
    for (var i = 0; i < subCategory.length; i++) {
        tsm = $('<select/>');
        tsm.append(`<option  value=`+subCategory[i].subCategoryId+`  >
         `+subCategory[i].subCategoryName+` </option>`);
        $('#subcategories').append(tsm);

    }
}



let globalArrModal = []
function createModalRow(data){
    console.log("Succcessssss cretateModal row"+data)
    let html = ``

    for (let i = 0; i < data.length; i++) {
        globalArrModal = data
        const itm = data[i]
        html += `<tr>
<td>`+itm.imageId+`</td>
<td><img style="max-width: 300px; max-height: 300px" src= "/uploads/product/`+itm.productImageUrl+`"></td>
       <td>
       <div class="ui buttons">
 
</div>
              </td>
                  </tr>`;
    }
    $('#tableModalRow').html(html);
}


$('#elastic').submit( (event) => {
    event.preventDefault();
var elastic= $("#search").val();

    console.log("elastic--------"+elastic)


});

$(document).ready(function(){
    $('#search').on('click',function(){
        const srcid= $("#search").val();
        console.log("-----------------------------------------------------------")
        console.log(srcid)
        $.ajax({
            url: './productManager/pagelisted/1/1',
            method: 'GET',
            dataType: 'json',
            success: function(data){
              console.log(data.datas)
                createRow(data)
            }
        });
    });
});