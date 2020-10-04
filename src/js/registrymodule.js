define(['jquery'], function() {
    return {
        init: function() {
            //表单验证
            ! function() {
                const form = document.querySelector('form')
                const boxlist = document.querySelectorAll('.box');
                const spanlist = document.querySelectorAll('form span');
                const username = document.querySelector('.username');
                const password = document.querySelector('.password');
                const tel = document.querySelector('.tel');
                const yzm = document.querySelector('#yzm');
                const submit = document.querySelector('.btn');
                const box1 = document.querySelector('.box1');
                var usernameflag = true;
                var telflag = true;
                var passwordflag = true;
                var yzmflag = true;


                //用户名
                username.onfocus = function() {
                    spanlist[0].innerHTML = '支持中文、字母、数字、"- "_"的组合,4-20个字符';
                    spanlist[0].style.color = '#999';
                };
                username.onblur = function() {
                    if (this.value !== '') {
                        var reg = /^[0-9\w\_a-zA-Z\u4e00-\u9fa5]+$/g;
                        var len = this.value.replace(/[\u4e00-\u9fa5]/g, '**').length;
                        if (len <= 20 && len >= 4) {
                            if (reg.test(this.value)) {
                                spanlist[0].innerHTML = '√';
                                spanlist[0].style.color = 'green';
                                usernameflag = true;
                            }
                        } else {
                            spanlist[0].innerHTML = '长度不符';
                            spanlist[0].style.color = 'red';
                            usernameflag = false;
                        }
                    } else {
                        spanlist[0].innerHTML = '用户姓名不能为空'
                        spanlist[0].style.color = 'red';
                        usernameflag = false;
                    }
                };

                // 密码
                password.onfocus = function() {
                    spanlist[1].innerHTML = '推荐使用字母、数字和字符两种以上的组合，6-20个字符';
                    spanlist[1].style.color = '#999';
                }
                password.oninput = function() {
                    if (this.value.length >= 6 && this.value.length <= 20) {
                        let regnum = /[0-9]/;
                        let reguppercase = /[A-Z]/;
                        let reglowercase = /[a-z]/;
                        let regother = /[\W\_]/;
                        let count = 0;
                        if (regnum.test(this.value)) {
                            count++;
                        }
                        if (reguppercase.test(this.value)) {
                            count++;
                        }
                        if (reglowercase.test(this.value)) {
                            count++;
                        }
                        if (regother.test(this.value)) {
                            count++;
                        }
                        switch (count) {
                            case 1:
                                spanlist[1].innerHTML = '弱:有被盗风险，建议使用字母、数字和符号两种以上组合';
                                spanlist[1].style.color = 'red';
                                passwordflag = false;
                                break;
                            case 2:
                            case 3:
                                spanlist[1].innerHTML = '中：安全强度适中，可以使用三种以上的组合来提高安全强度';
                                spanlist[1].style.color = 'orange';
                                passwordflag = true;
                                break;
                            case 4:
                                spanlist[1].innerHTML = '你的密码很安全';
                                spanlist[1].style.color = 'green';
                                passwordflag = true;
                                break;
                        }
                    } else {
                        spanlist[1].innerHTML = '密码长度有问题';
                        spanlist[1].style.color = 'red';
                        passwordflag = false;
                    }
                }
                password.onblur = function() {
                    if (this.value !== '' && passwordflag) {
                        spanlist[1].innerHTML = '√';
                        spanlist[1].style.color = 'green';
                    } else {
                        spanlist[1].innerHTML = '密码不能为空';
                        spanlist[1].style.color = 'red';
                        passwordflag = false;
                    }
                }

                //电话号码
                tel.onfocus = function() {
                    spanlist[2].innerHTML = '请输入正确的手机号码';
                    spanlist[2].style.color = '#999';
                };
                tel.onblur = function() {
                    if (this.value != '') {
                        var reg = /^1[3578]\d{9}$/;
                        if (reg.test(this.value)) {
                            spanlist[2].innerHTML = '√';
                            spanlist[2].style.color = 'green';
                            telflag = true;
                        } else {
                            spanlist[2].innerHTML = '格式有误';
                            spanlist[2].style.color = 'red';
                            telflag = false;
                        }
                    } else {
                        spanlist[2].innerHTML = '号码不能为空';
                        spanlist[2].style.color = 'red';
                        telflag = false;
                    }
                };

                //验证码
                yzm.onfocus = function() {
                    console.log(spanlist[3]);
                    spanlist[3].innerHTML = '请输入验证码';
                    spanlist[3].style.color = '#999';
                }
                yzm.onblur = function() {
                    if (this.value == box1.innerHTML) {
                        spanlist[3].innerHTML = '√';
                        spanlist[3].style.color = 'green';
                        yzmflag = true;
                    } else {
                        spanlist[3].innerHTML = '验证码错误';
                        spanlist[3].style.color = 'red';
                        yzmflag = false;
                    }
                };

                function rand(min, max) {
                    return Math.floor(Math.random() * (max - min)) + min;
                }
                box1.onclick = function() {
                    var randnum = rand(1000, 9999);
                    box1.innerHTML = randnum;
                }

                //表单提交
                form.onsubmit = function() {
                    if (username.value === '') {
                        spanlist[0].innerHTML = '用户名不能为空';
                        spanlist[0].style.color = 'red';
                        usernameflag = false;
                    }
                    if (password.value === '') {
                        spanlist[1].innerHTML = '密码不能为空';
                        spanlist[1].style.color = 'red';
                        passwordflag = false;
                    }
                    if (tel.value === '') {
                        spanlist[2].innerHTML = '手机号不能为空';
                        spanlist[2].style.color = 'red';
                        telflag = false;
                    }
                    if (yzm.value === '') {
                        spanlist[3].innerHTML = '验证码不能为空';
                        spanlist[3].style.color = 'red';
                        yzmflag = false;
                    }
                    if (!usernameflag || !passwordflag || !telflag || !yzmflag) {
                        return false;
                    }
                }

            }();

            //注册
            ! function() {
                let $spanlist = $('form span');
                let $username = $('.username');
                $username.on('blur', function() {
                    // console.log($(this).val());
                    if ($username.val() != '') {
                        $.ajax({
                            type: 'post',
                            url: 'http://10.31.152.60/project/php/registry.php',
                            data: {
                                name: $(this).val(),
                            }
                        }).done(function(data) {

                            if (!data) {
                                $spanlist.eq(0).html('√').css('color', 'green');
                            } else {
                                $spanlist.eq(0).html('该用户名已被注册').css('color', 'red');
                            }

                        })
                    };

                })

            }()

        }
    }
})