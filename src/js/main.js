require.config({
    paths: { 

        'jquery': 'https://cdn.bootcss.com/jquery/1.12.4/jquery.min',
         'jquerycookie': 'https://cdn.bootcdn.net/ajax/libs/jquery-cookie/1.4.1/jquery.cookie',
         'jquerylazyload': 'https://cdn.bootcdn.net/ajax/libs/jquery.lazyload/1.9.1/jquery.lazyload',
        'jquerypagination': 'jquery.pagination'
    },
    shim: {
        'jquerylazyload': {
            deps: ['jquery']
        },
        'jquerycookie': {
            deps: ['jquery']
        },
        'jquerypagination': {
            deps: ['jquery']
        }
    }

});
require(['jquery'],  function($)  {  //引入jquery模块
        
    let  $currentpage  =  $('#currentpage');  //获取元素
        
    let  currentmodule  =  $currentpage.attr('targetpage');  //获取元素的自定义的属性。
        
    if  (currentmodule)  {  //模块是否存在
                 require([currentmodule],  function(cmodule)  {  //加载模块
                         cmodule.init();         });     }
});