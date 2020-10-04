define(['jquery', 'jquerycookie'], function() {
    return {
        init: function() {
            const $spic = $('.spic');
            const $bpic = $('.bpic');
            const $sf = $('.sf');
            const $bf = $('.bf');
            let $sid = location.search.substring(1).split('=')[1];

            //渲染数据
            ! function() {
                console.log($sid);
                $.ajax({
                    type: 'post',
                    url: 'http://10.31.152.60/project/php/detail.php',
                    data: {
                        sid: $sid,
                    },
                    dataType: 'json',
                }).done(function(data) {
                    // console.log(data);
                    $('.spic img')[0].src = data.url;
                    $('.bf img')[0].src = data.url;
                    $('.prise strong').html(data.prise);
                    $('.goods_detail h3').html(data.title);
                    $('.detail_sailnum').html(data.sailnum);
                    //小图
                    let piclist = data.urllist.split(',');
                    let $strhtml = '';
                    $.each(piclist, function(index, value) {
                        $strhtml += ` <li><img src="${value}" alt=""></li>`;
                    });
                    $('.piclist ul').html($strhtml);
                });

            }()

            //小图切换
            ! function() {
                $('.piclist ul').on('click', 'li', function() {
                    $('.spic img')[0].src = $(this).find('img')[0].src;
                    $('.bf img')[0].src = $(this).find('img')[0].src;

                })
            }()

            //放大镜效果
            ! function() {
                $spic.hover(function() {
                    $sf.width($bf.width() * $spic.width() / $bpic.width());
                    $sf.width($bf.height() * $spic.height() / $bpic.height());
                    let $bili = $bpic.width() / $spic.width();
                    $sf.css('visibility', 'visible');
                    $bf.css('visibility', 'visible');
                    //移动
                    $(this).on('mousemove', function(ev) {
                        let $leftvalue = ev.pageX - $('.glass').offset().left - $sf.width() / 2;
                        let $topvalue = ev.pageY - $('.glass').offset().top - $sf.height() / 2;
                        if ($leftvalue < 0) {
                            $leftvalue = 0;
                        } else if ($leftvalue >= $spic.width() - $sf.width()) {
                            $leftvalue = $spic.width() - $sf.width()
                        }

                        if ($topvalue < 0) {
                            $topvalue = 0;
                        } else if ($topvalue >= $spic.height() - $sf.height()) {
                            $topvalue = $spic.height() - $sf.height()
                        }

                        $sf.css({
                            left: $leftvalue,
                            top: $topvalue
                        });

                        $bpic.css({
                            left: -$leftvalue * $bili,
                            top: -$topvalue * $bili
                        });
                    });

                }, function() {
                    $sf.css('visibility', 'hidden');
                    $bf.css('visibility', 'hidden');
                })
            }()

            //添加到购物车
            ! function() {

                let $arrsid = [];
                let $arrnum = [];

                function cooiearray() {

                    if ($.cookie('cookiesid') && $.cookie('cookienum')) {

                        $arrsid = $.cookie('cookiesid').split(',');
                        $arrnum = $.cookie('cookienum').split(',');
                        console.log($arrsid);
                        console.log($arrnum);
                    } else {
                        $arrsid = [];
                        $arrnum = [];
                    }
                }
                $('.cart').on('click', function() {
                    cooiearray();
                    if ($.inArray($sid, $arrsid) != -1) { //第二次添加数据，商品数量累加就行

                        let $index = $.inArray($sid, $arrsid)
                        let $count = parseInt($arrnum[$index]) + parseInt($('.amount input').val());
                        $arrnum[$index] = $count;
                        $.cookie('cookienum', $arrnum, { expires: 7 });

                    } else {

                        $arrsid.push($sid);
                        $.cookie('cookiesid', $arrsid, { expires: 7 });
                        $arrnum.push($('.amount input').val());
                        $.cookie('cookienum', $arrnum, { expires: 7 });
                    }

                    $('.hidebox').css('display', 'block');
                    $('.hidebg').css('display', 'block');

                    $('.close').on('click', function() {
                        $('.hidebox').css('display', 'none');
                        $('.hidebg').css('display', 'none');
                    })



                })

            }()



        }
    }
})