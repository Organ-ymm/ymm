$(function () {
    alert(9999);
    $.ajax({
        type: 'post',
        url: '../../selectUserAddressCartOrders',
        data: {"user_id": $("#hidden").val()},
        dataType: 'text',
        success: function (rec) {
            if (rec == "1") {
                location.href="personalCenter"
            } else {
                alert('页面请求失败');
            }
        }
    });
    return false;
})
