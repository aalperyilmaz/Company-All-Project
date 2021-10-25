let select_id = 0
$('#duzenle').submit( (event) => {
    event.preventDefault();
///Formda post edilirken formun methodu  ve id si belirlenir
//id dünle methot post
    const announcementTitle= $("#başlık").val();
    const announcementComment= $("#yorum").val();

    const announcementDate= $("#date").val();
/// bu değişkenlerde

    const probj={
        announcementTitle:announcementTitle,
        announcementComment:announcementComment,
        announcementDate:announcementDate,
        announcementStatus:1
    }


    if ( select_id != 0 ) {
        // update
        probj["announcementId"] = select_id;

        console.log(probj.announcementId)
    }


console.log("biz yazdık bu  hatasını"+probj.announcementId +"--"+probj.announcementComment+"--"+probj.announcementTitle)

    $.ajax({
        url:'./announce/addAnnounce',
        type:'POST',
        data:JSON.stringify(probj) ,
        contentType: "application/json; charset=utf-8",
        dataType:'Json',

        success:function (data){
            if (data>0){

                alert("islem basarili")
                listAnnounce()
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


















function listAnnounce(){


    $.ajax({
        url: './announce/listed',
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
   /* const at = document.getElementById("pageNum").value;*/
    /*console.log(at)*/

    let html = ``

    for (let i = 0; i < data.datas.length; i++) {
        globalArr = data.datas
        const itm = data.datas[i]

        html += `<tr>
<td>`+itm.announcementStatus+`</td>
 <td>`+itm.announcementTitle+`</td>
  <td>`+itm.announcementComment+`</td>
           
  <td>`+itm.announcementDate+`</td>
       <td>
       <div class="ui buttons">
  <button class="ui button" onclick="fncProductDelete(`+itm.announcementId+`)" >Sil</button>
  <button class="ui button" onclick="duzenle(`+i+`,`+itm.announcementId+`)">Düzenle</button>
  
</div>
              </td>
                  </tr>`;
    }
    $('#tableRow').html(html);
}




function fncProductDelete(pid){
    let answer=confirm("Silmek istediginizden eminmisiniz");
    if (answer){
        $.ajax({
            url: "./announce/delete/"+pid,
            type: 'GET',
            dataType: 'text',
            success: function (data){
                if (data !="0"){
                    listAnnounce()
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




function pagination(data){
    console.log(data)
    $.ajax({
        url: './announce/pagelisted/'+data+'/10',
        type: 'GET',
        contentType : 'application/json; charset=utf-8',
        success: function (datas) {
            console.log(datas)
            console.log("ASDorıteroıtj")
            console.log("SUCCES")
            createRow(datas)
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })



}

function generate_table() {
    var tr;
    $('#emp_body').html('');
    for (var i = 0; i < 3; i++) {
        tr = $('<a/>');
        tr.append(`<a onclick=" pagination(`+i+`)" id='generated' value=`+i+` class=\"item\">
         `+i+` </a>`);
        $('#emp_body').append(tr);


    }
}
generate_table()


function  duzenle(id,db_id){

    const itm=globalArr[id]
    select_id=db_id
    $(function(){
console.log(select_id);

            $(".duzenle").modal('show');
        });
        $(".duzenle").modal({
            closable: true
        });
        ////yukarıdaki modalı açtırmak
    $("#yorum").val(itm.announcementComment);
  $("#başlık").val(itm.announcementTitle);


     $("#date").val(itm.announcementDate);

}