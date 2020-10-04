define(['jquery'], function($) {
    return {
        init: function() {
            //登录
            let $span = $('form span');

            $('.btn').on('click', function() {
                $.ajax({
                    type: 'post',
                    url: 'http://10.31.152.60/project/php/login.php',
                    data: {
                        username: $('.username').val(),
                        password: hex_sha1($('.password').val())
                    }
                }).done(function(data) {
                    // console.log(data);
                    if (data) {
                        location.href = "./main.html";
                    } else {
                        $('.username').val('');
                        $('.password').val('');
                        $span.html('用户名或密码错误').css('color', 'red');

                    }
                })


            })


        }
    }
})