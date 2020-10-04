define(['jquery', 'jquerycookie'], function() {
    return {
        init: function() {
            let $total = 0;

            function showlist(sid, num) {
                $.ajax({
                    type: 'post',
                    url: 'http://10.31.152.60/project/php/cart.php',
                    data: {
                        sid: sid,
                    },
                    dataType: 'json',
                }).done(function(data) {
                    // console.log(data);
                    let $clonebox = $('.goodslist:hidden').clone(true, true); //克隆隐藏元素
                    // $clonebox.attr('id', 'clone');
                    $clonebox.find('.goodsimg').attr('src', data.url);
                    $clonebox.find('.goodsimg').attr('sid', data.sid);
                    $clonebox.find('.goodstitle').find('a').html(data.title);
                    $clonebox.find('.single').html(data.prise);
                    $clonebox.find('.list-num').html(num);
                    //计算单个商品的价格
                    $clonebox.find('.total').html((data.prise * num).toFixed(2));
                    $clonebox.css('display', 'block');
                    $('.item-list').append($clonebox);

                    $clonebox.each(function(index, element) {
                        console.log($clonebox.find('.total').html());
                        $total += parseFloat($clonebox.find('.total').html());
                    });
                    $('.sum').html($total.toFixed(2));

                });
            }
            if ($.cookie('cookiesid') && $.cookie('cookienum')) {
                let id = $.cookie('cookiesid').split(','); //获取cookie 
                let num = $.cookie('cookienum').split(','); //获取cookie
                $.each(id, function(index, value) {
                    showlist(id[index], num[index]);
                });
            }

        }
    }
})