define(['jquery', 'jquerypagination', 'jquerylazyload'], function($) {
    return {
        init: function() {
            let array_default = []; //排序前的数组，默认的
            let array = []; //排序中的数组
            let prev = null; //当前的li里面的价格。
            let next = null; //下一个li里面的价格。
            //渲染第一页
            let $list = $('.contlist ul');
            $.ajax({
                url: 'http://10.31.152.60/project/php/list.php'
            }).done(function(data) {
                // console.log(data);
                let strHtml = '';
                let $dataArr = $(JSON.parse(data));
                $dataArr.each(function(index, element) {
                    strHtml += `
                        <li>
                        <a href="detail.html?sid=${element.sid}">
                            <img class="lazy" data-original="${element.url}" width="228" height="228">
                        </a>
                        <p class="p1"><a href="detail.html?sid=${element.sid}">${element.title}</a></p>
                        <p class="p3">
                            <span class="prise">¥${element.prise}</span>
                            <span class="sailnum">已售 ${element.sailnum}</span>
                        </p>

                    </li>
                        `
                })
                $list.html(strHtml);
                $(function() {
                    $("img.lazy").lazyload({ effect: "fadeIn" });
                });
                array_default = []; //排序前的li数组
                array = []; //排序中的数组
                prev = null;
                next = null;
                $('.contlist ul li').each(function(index, element) { //index:下标索引 element:元素对象 $(this):元素对象
                    array[index] = $(this); //赋值给数组
                    array_default[index] = $(this); //赋值给数组

                });
                // console.log(array);
            });

            //分页
            $('.page').pagination({
                pageCount: 3, //总的页数
                jump: true, //是否开启跳转到指定的页数，布尔值。
                prevContent: '上一页',
                nextContent: '下一页',
                callback: function(api) { //api:对象，包含分页信息。
                    //点击分页页码将页码传给后端。
                    //获取的页码给后端
                    // console.log(api.getCurrent());
                    $.ajax({
                        url: 'http://10.31.152.60/project/php/list.php',
                        data: { //将分页对象返回的页码传输给后端
                            page: api.getCurrent()
                        },
                    }).done(function(data) { //根据页码重新获取接口数据，进行渲染。
                        let strHtml = '';
                        let $dataArr = $(JSON.parse(data));
                        $dataArr.each(function(index, element) {
                            strHtml += `
                                <li>
                                <a href="detail.html?sid=${element.sid}">
                                    <img class="lazy" data-original="${element.url}" width="228" height="228">
                                </a>
                                <p class="p1"><a href="detail.html?sid=${element.sid}">${element.title}</a></p>
                                <p class="p3">
                                    <span class="prise">¥${element.prise}</span>
                                    <span class="sailnum">已售 ${element.sailnum}</span>
                                </p>
                            </li>
                                `;
                        });
                        $list.html(strHtml); //新的数据覆盖前面默认的数据。
                        //分页结束了。
                        $(function() {
                            $("img.lazy").lazyload({ effect: "fadeIn" });
                        });

                        array_default = []; //排序前的li数组
                        array = []; //排序中的数组
                        prev = null;
                        next = null;

                        //将页面的li元素加载到两个数组中
                        $('.contlist ul li').each(function(index, element) {
                            array[index] = $(this);
                            array_default[index] = $(this);
                        });
                    })
                }
            });
            console.log($('.contlist ul li').length);
            console.log(array_default);

            //排序
            let $btnlist = $('.conthead button');
            // console.log($btnlist);
            //1.默认排序
            $btnlist.eq(0).on('click', function() {
                $.each(array_default, function(index, value) { //遍历追加
                    $list.append(value);
                });
                return;
            });

            //2
            $btnlist.eq(1).on('click', function() {
                for (let i = 0; i < array.length - 1; i++) {
                    for (let j = 0; j < array.length - i - 1; j++) {
                        prev = parseFloat(array[j].find('.price').html().substring(1)); //当前li的价格
                        next = parseFloat(array[j + 1].find('.price').html().substring(1)); //下一个li的价格
                        //通过价格的判断，改变的是li的位置。
                        //如果第一个li里面的价格>第二个li的价格。 交换的是li的位置。
                        if (prev > next) {
                            let temp = array[j];
                            array[j] = array[j + 1];
                            array[j + 1] = temp;
                        }
                    }
                }
                //清空原来的列表，将排序后的数据添加上去。
                //empty() : 删除匹配的元素集合中所有的子节点。
                $('.list ul').empty(); //清空原来的列表
                $.each(array, function(index, value) { //重新渲染，追加
                    $('.list ul').append(value);
                });
            });


        }
    }
})