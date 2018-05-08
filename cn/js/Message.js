
$('.savemessage').on('click', function(e) {
    var name = $("#name").val();
    var company = $("#company").val();
    var telphone = $("#telphone").val();
    var email = $("#email").val();
    var contents = $("#contents").val();
    var message = "";
    if (name == "") {
        message += "姓名不能为空\n\n";
    }
    if (company == "") {
        message += "公司不能为空\n\n";
    }
    if (telphone == "") {
        message += "电话不能为空\n\n";
    } else {
        var reg_tel = /^(0[0-9]{2,3}\-)?([1-9][0-9]{6,7})+(\-[0-9]{1,4})?$|(^1\d{10}$)/;
        if (!reg_tel.test(telphone)) {
            message += "电话格式错误\n\n";
        }
    }
    if (email == "") {
        message += "邮箱不能为空\n\n";
    } else {
        var reg_email = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
        if (!reg_email.test(email)) {
            message += "邮箱格式错误\n\n";
        }
    }
    if (contents == "") {
        message += "留言不能为空\n";
    }
    if (message != '') {
        alert(message);
    } else {
        $(".savemessage").hide();
        $.ajax({
            type: "post",
            url: "/Ajax/en/AjaxHandler.ashx",
            data: {
                acction: "savemessage",
                name: name,
                company: company,
                tel: telphone,
                email: email,
                intro: contents
            },
            success: function(json) {
                var data = JSON.parse(json);
                switch (data.code) {
                    case 0:
                        alert("保存成功！");
                        $("#name").val("");
                        $("#company").val("");
                        $("#telphone").val("");
                        $("#email").val("");
                        $("#contents").val("");
                        break;
                    case 1:
                        alert("姓名不能为空！");
                        break;
                    case 2:
                        alert("公司不能为空！");
                        window.location.reload();
                        break;
                    case 3:
                        alert("电话不能为空");
                        break;
                    case 4:
                        alert("/电话格式错误");
                        break;
                    case 5:
                        alert("邮箱不能为空！");
                        break;
                    case 6:
                        alert("邮箱格式错误！");
                        break;
                    case 7:
                        alert("留言不能为空！");
                        break;
                    case 8:
                        alert("留言提交失败！");
                        break;
                    case -1:
                        alert("接口异常！");
                        break;
                }
                $(".savemessage").show();
            }

        });

    }
})
/*---------------------------------------------*/