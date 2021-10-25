

let select_id = 0
$('#postRegister').submit( (event) => {
    event.preventDefault();


    const firstName= $("#firstName").val();
    const lastName= $("#lastName").val();
    const email= $("#email").val();
    const password= $("#password").val();



    const companyName= $("#companyName").val();
    const companyAddress= $("#companyAddress").val();
    const companyLatitude= $("#companyLatitude").val();
    const companyTel=$("#companyTel").val();
    const companySector=$("#companySector").val();
    const companyLongitude=$("#companyLongitude").val();

    const user={

        password:password,
        email:email,
        lastName:lastName,
        firstName:firstName,
    }
    const company={
        companyName:companyName,
        companyAddress:companyAddress,
        companyLatitude:companyLatitude,
        companyTel:companyTel,
        companySector:companySector,
        companyLongitude:companyLongitude

    }

    alert(user.firstName)
    $.ajax({
        url: './registers/add',

        type: 'POST',
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify( user),
        dataType: 'JSON',
        success:function (data){

                console.log(data.datas);


        },
        error:function (err){
            console.log("ERRRRORDA")
            console.log(err)

            fncDznl()
            const datam=err.responseJSON.errors
            console.log(err.responseJSON.errors)
createModalRow(datam)
            alert("islem sirasinda hata olustu... error log")

        }
    })






});


function fncDznl(){
    $(function(){

        $(".duzenle").modal('show');
    });
    $(".duzenle").modal({
        closable: true
    });

}

function createModalRow(data){
    console.log("Succcessssss cretateModal row"+data)
    let html = ``

    for (let i = 0; i < data.length; i++) {
        globalArrModal = data
        const itm = data[i]
        html += `<tr>
<td>`+itm.objectName+`</td>
<td>`+itm.defaultMessage+`</td>


                  </tr>`;
    }
    $('#tableModalRow').html(html);
}
