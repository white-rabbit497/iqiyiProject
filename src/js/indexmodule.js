define(['jquery', 'jquerylazyload'], function() {
    return {
        init: function() {
            //渲染
            ! function() {
                //渲染第一块内容
                let $goods = $('.part1content ul');
                $.ajax({
                    url: 'http://10.31.152.60/project/php/main.php'
                }).done(function(data) {
                    // console.log(data);
                    let strHTML = '';
                    let $dataArr = $(JSON.parse(data));
                    $dataArr.each(function(index, element) {
                        strHTML += `
                    <li class="goods">  
                        <a href="">
                            <img class="lazy" data-original="${element.url}" width="140" height="140">
                       </a>
                        <p class="p1"><a href="">${element.title}</a></p>
                        <p class="p2">
                            <span>${element.red}</span>${element.small}
                        </p>
                        <p class="p3">
                            <span class="prise">¥${element.prise}</span>
                            <span class="sailnum">已售 ${element.sailnum}</span>
                        </p>
                       </li>
                    `
                    })
                    $goods.html(strHTML);
                    $(function() {
                        $("img.lazy").lazyload({ effect: "fadeIn" });
                    });
                })

                // 第二次渲染
                let $left = $('.part2 .left ul');
                $.ajax({
                    url: 'http://10.31.152.60/project/php/mian2.php'
                }).then(function(data) {
                    // console.log(data);
                    let strHTML = '';
                    let $dataArr = $(JSON.parse(data));
                    $dataArr.each(function(index, element) {
                        strHTML += `
                    <li>
                    <a href="">
                        <div class="detial">
                            <p class="shoptitle">${element.title}</p>
                            <p class="shopprise">${element.describt}</p>
                        </div>
                        <img class="lazy" data-original="${element.img}" alt="">
                    </a>
                </li>
                    `
                    })
                    $left.html(strHTML);
                    $(function() {
                        $("img.lazy").lazyload({ effect: "fadeIn" });
                    });
                })
            }()

            //轮播图效果
            ! function() {
                let $piclist = $('.banner ul li');
                let $btnlist = $('.banner ol li');
                let $rightbtn = $('.banner .right');
                let $leftbtn = $('.banner .left');
                let $banner = $('.banner');
                let $a = $('.banner a');
                let $num = 0;
                let $timer = null;
                // 小点点击事件
                $btnlist.each(function(index, element) {
                    $(element).on('click', function() {
                        $num = $(this).index();
                        picswitch($num);
                    })
                });
                //按钮点击事件
                $rightbtn.on('click', function() {
                    $num++;
                    if ($num >= $piclist.length) {
                        $num = 0;
                    }
                    picswitch($num);
                });
                $leftbtn.on('click', function() {
                    $num--;
                    if ($num < 0) {
                        $num = $piclist.length - 1;
                    }
                    picswitch($num);
                });
                // alert($rightbtn.length);
                $timer = setInterval(function() {
                    $rightbtn.click();
                }, 1500);

                function picswitch($num) {
                    $btnlist.eq($num).addClass('active').siblings().removeClass('active');
                    $piclist.eq($num).css({ opacity: 1, }).siblings().css({ opacity: 0, });
                }

                // 停止计时器 左右按钮css效果
                $banner.hover(function() {
                    clearInterval($timer);
                    $a.animate({ opacity: 1 });
                }, function() {
                    $timer = setInterval(function() {
                        $rightbtn.click();
                    }, 1500)
                    $a.animate({ opacity: 0 });
                })

                //按钮的css样式效果
                $a.hover(function() {
                    $(this).css({ backgroundPosition: -66 });
                }, function() {
                    $(this).css({ backgroundPosition: 0 });
                })

                $a.on('mousedown', function() {
                    $(this).css({ backgroundPosition: -132 })
                })
                $a.on('mouseup', function() {
                    $(this).css({ backgroundPosition: 0 })
                })
            }()

            //回到顶部效果
            ! function() {
                let $top = $('.top');
                let $scroll = $('.scroll');
                $(window).on('scroll', function() {
                    let $scrolltop = $(window).scrollTop();
                    if ($scrolltop >= 20) {
                        $scroll.show();
                    } else if ($scrolltop == 0) {
                        $scroll.hide();
                    }

                })
                $top.on('click', function() {
                    console.log($('html'));
                    $('html').animate({
                        scrollTop: 0,
                    });
                })
            }()


            console.log($('.part1content ul li').length);


        }
    }

})