$(function () {

    var router = new Router({
        container: '#container',
        enterTimeout: 250,
        leaveTimeout: 250
    });

    var home = {
        url: '/',
        className: 'home',
        render: function () {
            return $('#tpl_home').html();
        }
    };

    var dydj = {
        url: '/dydj',
        className: 'dydj',
        render: function () {
            return $('#tpl_dydj').html();
        }
    };

    var pjl = {
        url: '/pjl',
        className: 'pjl',
        render: function () {
            return $('#tpl_pjl').html();
        }
    };

    var qdb = {
        url: '/qdb',
        className: 'qdb',
        render: function () {
            return $('#tpl_qdb').html();
        }
    };

    var czgl = {
        url: '/czgl',
        className: 'czgl',
        render: function () {
            return $('#tpl_czgl').html();
        }
    };

    var lcgl = {
        url: '/lcgl',
        className: 'lcgl',
        render: function () {
            return $('#tpl_lcgl').html();
        }
    };

    var xlgl = {
        url: '/xlgl',
        className: 'xlgl',
        render: function () {
            return $('#tpl_xlgl').html();
        }
    };

    var addcz = {
        url: '/addcz',
        className: 'addcz',
        render: function () {
            return $('#tpl_addcz').html();
        }
    };

    var addlc = {
        url: '/addlc',
        className: 'addlc',
        render: function () {
            return $('#tpl_addlc').html();
        }
    };

    var addxl = {
        url: '/addxl',
        className: 'addxl',
        render: function () {
            return $('#tpl_addxl').html();
        }
    };
    router.push(home)
        .push(lcgl)
        .push(addxl)
        .push(addlc)
        .push(addcz)
        .push(czgl)
        .push(dydj)
        .push(pjl)
        .push(qdb)
        .push(xlgl)
        .setDefault('/')
        .init();


    // .container 设置了 overflow 属性, 导致 Android 手机下输入框获取焦点时, 输入法挡住输入框的 bug
    // 相关 issue: https://github.com/weui/weui/issues/15
    // 解决方法:
    // 0. .container 去掉 overflow 属性, 但此 demo 下会引发别的问题
    // 1. 参考 http://stackoverflow.com/questions/23757345/android-does-not-correctly-scroll-on-input-focus-if-not-body-element
    //    Android 手机下, input 或 textarea 元素聚焦时, 主动滚一把
    if (/Android/gi.test(navigator.userAgent)) {
        window.addEventListener('resize', function () {
            if (document.activeElement.tagName == 'INPUT' || document.activeElement.tagName == 'TEXTAREA') {
                window.setTimeout(function () {
                    document.activeElement.scrollIntoViewIfNeeded();
                }, 0);
            }
        })
    }
});
