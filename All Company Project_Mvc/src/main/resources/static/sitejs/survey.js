let select_id = 0

$('#update').submit((event) => {
    event.preventDefault();
///Formda post edilirken formun methodu  ve id si belirlenir
//id dünle methot post
    const advertisementName = $("#advertisementName").val();
    const advertisementStartDate = $("#advertisementStartDate").val();
    const advertisementEndDate = $("#advertisementEndDate").val();
    const advertisementImageUrl = $("#advertisementImageUrl").val();
    const advertisementHeight = $("#advertisementHeight").val();
    const advertisementWidth = $("#advertisementWidth").val();
    const advertisementLink = $("#advertisementLink").val();
    const advertisementPresentationWatchSize = $("#advertisementPresentationWatchSize").val();
/// bu değişkenlerde

    const advertisementobj = {
        advertisementName: advertisementName,
        advertisementStartDate: advertisementStartDate,
        advertisementEndDate: advertisementEndDate,
        advertisementImageUrl: advertisementImageUrl,
        advertisementHeight: advertisementHeight,
        advertisementWidth: advertisementWidth,
        advertisementLink: advertisementLink,
        advertisementPresentationWatchSize: advertisementPresentationWatchSize,
        advertisementId: 0
    }

    console.log(select_id);
    console.log(advertisementobj.advertisementId);

    if (select_id != 0) {
        // update
        advertisementobj.advertisementId = select_id;
        console.log("-------------------------------------");

        console.log(advertisementobj.advertisementId);
    }

    console.log("biz yazdık bu  hatasını" + advertisementobj.advertisementId + "--" + advertisementobj.advertisementName + "--" + advertisementobj.advertisementLink)

    $.ajax({
        url: './advertisement/update',
        type: 'POST',
        data: JSON.stringify(advertisementobj),
        contentType: "application/json; charset=utf-8",
        dataType: 'Json',

        success: function (data) {

            alert("İşlem Başarılı!");
            pagination(0);

        },
        error: function (err) {
            console.log("İşlem Sırasında Bir Hata Oluştu! Error log: " + err);
            alert("İşlem Sırasında Bir Hata Oluştu!");
        }
    })


});

function listAdvertisement() {

    $.ajax({
        url: './advertisement/list',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (datas) {
            console.log(datas)
            console.log("SUCCES!")
            createRow(datas)
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })
}

let globalArr = []

function createRow(data) {
    console.log("Succcessssss cretate row" + data)
    /* const at = document.getElementById("pageNum").value;*/
    /*console.log(at)*/

    let html = ``

    for (let i = 0; i < data.datas.length; i++) {
        globalArr = data.datas
        const itm = data.datas[i]

        html += `
        <tr>
            <td>` + itm.surveyId + `</td>
            <td>` + itm.surveyTitle + `</td>
            <td>
                <div class="ui buttons">
                    <button class="ui button red" onclick="fncDelete(` + itm.surveyId + `)" >Sil</button>
                    <button class="ui button blue" onclick="surveyoptions(` + i + `,` + itm.surveyId + `)">Görüntüle</button>
                </div>
            </td>
        </tr>`;
    }

    $('#tableRow').html(html);
}

function fncDelete(pid) {
    let answer = confirm("Silmek istediğinizden emin misiniz?");
    if (answer) {
        $.ajax({
            url: "./survey/delete/" + pid,
            type: 'GET',
            dataType: 'text',
            success: function (data) {
                alert("Silme işlemi başarılı!")
                pagination(0)
            },
            error: function (err) {
                alert("Silme işlemi başarısız!")
                console.log(err);
            }
        })
    }
}

function pagination(data) {
    console.log(data)
    $.ajax({
        url: './survey/pagination/' + data + '/10',
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (datas) {
            console.log(datas)
            console.log("SUCCES!")
            createRow(datas)
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırasında bir hata oluştu! pagi");
        }
    })
}

pagination(0);

function generate_table() {
    var tr;
    $('#emp_body').html('');
    for (var i = 0; i < 3; i++) {
        tr = $('<a/>');
        tr.append(`<a onclick=" pagination(` + i + `)" id='generated' value=` + i + ` class=\"item\">
         ` + i + ` </a>`);
        $('#emp_body').append(tr);
    }
}

generate_table()

function surveyoptions(id, db_id) {

    const itm = globalArr[id]
    select_id = db_id
    $(function () {
        console.log(select_id);

        $(".surveyoptions").modal('show');
    });
    $(".surveyoptions").modal({
        closable: true
    });

    $.ajax({
        url: './survey/vote/' + select_id,
        type: 'GET',
        contentType: 'application/json; charset=utf-8',
        success: function (datas) {
            console.log(datas)
            createRow2(datas)
        },
        error: function (err) {
            console.log(err)
        }
    })

}

function createRow2(data) {
    console.log("Succcessssss cretate row:" + data.datas.length)
    /* const at = document.getElementById("pageNum").value;*/
    /*console.log(at)*/

    let html = ``

    for (let i = 0; i < data.datas.length; i++) {
        globalArr = data.datas
        const itm = data.datas[i]

        html += `
        <tr>
            <td>` + itm.survayName + `</td>
            <td>` + itm.optionsName + `</td>
            <td>` + itm.optionsVote + `</td>
        </tr>`;
    }

    $('#tableRow2').html(html);
}