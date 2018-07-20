
<!DOCTYPE html>
<html lang="ko" class="">
<head>
    <title>ZUM - 생각을 읽다, ZUM</title>
    <!-- zum.com의 소스코드가 궁금하면 이곳을 방문하라. http://www.zuminternet.com/recruit/list -->
    <meta charset="utf-8"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta property="og:title" content="생각을 읽다, ZUM"/>
    <meta property="og:description" content="검색 포털 줌닷컴에서 인터넷 생활의 편리함과 즐거움을 느껴보세요!"/>
    <meta property="og:image" content="http://lego.zumst.com/resources/current/images/thumb_zum.jpg"/>
    <link rel="image_src" href="http://lego.zumst.com/resources/current/images/thumb_zum.jpg"/>
    <link rel="icon" href="/favicon.ico?v=2"/>
    <style>
        html {
            background: url(http://lego.zumst.com/resources/current/images/img_main_loading.gif) no-repeat 50% 310px
        }
        body {
            display: none
        }
    </style>
    <link rel="stylesheet" href="http://lego.zumst.com/resources/current/build/css/start-f88c976258cc886ad364d20263d01b3b.css"/>
    <script type="text/javascript">
        document.domain = 'zum.com';
        history.navigationMode = 'compatible';
        (function () {
            function jsonToKeysArray(jsonObj) {
                var resultArray = [];
                if (jsonObj) {
                    for (var name in jsonObj) {
                        if (jsonObj.hasOwnProperty(name)) {
                            resultArray.push(name);
                        }
                    }
                }
                return resultArray;
            }
            function jsonToTargetArray(jsonObj) {
                var resultArray = [];
                if (jsonObj) {
                    for (var name in jsonObj) {
                        if (jsonObj.hasOwnProperty(name)) {
                            resultArray.push({
                                target : name,
                                action : jsonObj[name]
                            });
                        }
                    }
                }
                return resultArray;
            }
            var variants = {"vBsY4CZh":{"id":"vBsY4CZh","title":"B","rate":1,"description":"target","payload":[{"type":"targeting","target":"news_tab","value":"b"}]}};
            var targetValues = {"hub_tab":"undefined","key":"834B6FAD-0696-4E04-9930-E019DF993760"};
            var variantsStat = jsonToKeysArray(variants);
            var targetsStat = jsonToTargetArray(targetValues);
            window['serverNumber'] = 5;
            window['variants'] = variants;
            window['targetValues'] = targetValues;
            window['targets'] = "{\"hub_tab\":\"undefined\",\"key\":\"834B6FAD-0696-4E04-9930-E019DF993760\"}";
            window['units'] = {"news_tab":{"type":"targeting","target":"news_tab","value":"b"}};
            window['variantsStat'] = variantsStat;
            window['targetsStat'] = targetsStat;
            window['variantsParam'] = "vBsY4CZh";
            window['puid'] = "43c3983e-1901-4537-93f3-86a0dcdbfb3f";
        })();
        (function () {
            var checkNewsShopping = {
                useShopping:1,
                useNews:1,
                configCookie: function (name, value, options) {
                    if (typeof value != 'undefined') {
                        options = options || {};
                        if (value === null) {
                            value = '';
                            options.expires = -1;
                        }
                        var expires = '';
                        if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
                            var date;
                            if (typeof options.expires == 'number') {
                                date = new Date();
                                date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
                            } else {
                                date = options.expires;
                            }
                            expires = '; expires=' + date.toUTCString();
                        }
                        var path = options.path ? '; path=' + (options.path) : '';
                        var domain = options.domain ? '; domain=' + (options.domain) : '';
                        var secure = options.secure ? '; secure' : '';
                        document.cookie = [name, '=', encodeURIComponent(value).replace(/\(/g, "%28").replace(/\)/g, "%29"), expires, path, domain, secure].join('');
                    } else {
                        var cookieValue = null;
                        if (document.cookie && document.cookie != '') {
                            var cookies = document.cookie.split(';');
                            for (var i = 0; i < cookies.length; i++) {
                                var cookie = cookies[i].trim();
                                if (cookie.substring(0, name.length + 1) == (name + '=')) {
                                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                                    break;
                                }
                            }
                        }
                        return cookieValue;
                    }
                },
                moveHome: function () {
                    this.configCookie("p", "0", {'expires': 3650});
                    var expires = new Date(new Date().getTime() + (5 * 1000));
                    this.configCookie("pr", expires.getTime(), {
                        'expires': expires,
                        'path': '/'
                    });
                    location.reload();
                },
                init: function () {
                    if (window.location.hash.indexOf("news=") > 0) {
                        if (this.useNews === 0) {
                            this.moveHome();
                        }
                    }
                    else if (window.location.hash.indexOf("shopping") > 0) {
                        if (this.useNews === 0 || this.useShopping === 0) {
                            this.moveHome();
                        }
                    }
                }
            };
            checkNewsShopping.init();
        })();
        var ESTatTracker = ESTatTracker || [];
        var zum = {
            postProcessor: [],
            browser:{"version":"67.0.3396.99","ie6":false,"ie67":false,"ie8":false,"identifyIe11":false,"mobile":false,"cssClass":"chrome webkit","majorVersion":67,"chrome":true,"webkit":true},
            now: new Date().getTime(),
            initialized: false,
            documentKeyDownHookForSearchBox: true
        };
        window.newslink = false;
        window.newspaperlink = false;
        window.relatednewslink = false;
        (function (m) {
            var cacheProcessor = {};
            var invokedCacheProcessor = false;
            zum.invokeCacheProcessor = function () {
                if (invokedCacheProcessor) {
                    return;
                }
                invokedCacheProcessor = true;
                for (var i = 0; i < m.length; ++i) {
                    if (cacheProcessor[m[i]]) {
                        var params = cacheProcessor[m[i]].shift();
                        while (1) {
                            if (!params) {
                                break;
                            }
                            window[m[i]].apply(window, params);
                            params = cacheProcessor[m[i]].shift();
                        }
                    }
                }
            };
            for (var i = 0; i < m.length; ++i) {
                window[m[i]] = (function (index) {
                    return function () {
                        if (invokedCacheProcessor) {
                            return;
                        }
                        if (!cacheProcessor[m[index]]) {
                            cacheProcessor[m[index]] = [];
                        }
                        cacheProcessor[m[index]].push(arguments);
                        return false;
                    }
                })(i);
            }
        })(['ESTatOnlyClick', 'ESTatDoodleClick', 'viewMobileMode', 'ESTatClick', 'ESTatLinkClick', 'ESTatBannerMoveUrl', 'ESTatLinkAppMoveUrl', 'makeEstat', 'goOutlink']);
        (function () {
            zum.userData = {
                isAuth: "false" === "true",
                authType: "",
                isHomeFirstUser: false,
                isZumpageVisitedUser: true,
                dfset: 1,
                onr : 0,
                st: "1",
                lt: "0",
                hbv: "1",
                hbx: "A50|G17849",
                hpfs: "",
                eng:"",
                se:"0",
                ken:"0",
                thm:"",
                hp:0,
                bxv: null,
                lo: "4",
                bx: "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
                pfs: "",
                lus: "0",
                pri: false,
                lzm: false,
                zpud: null,
                fsd: "",
                ifsc: false
            };
            zum.page = 0;
            zum.mpagecount = 1;
            zum.zumpageId = "";
            zum.myZumpageId = "";
            zum.bakeryStamp = 1;
            zum.readonly = false;
            zum.isTab = false;
            zum.isOwner = true;
            zum.baseUrl = "http://zum.com";
            zum.staticBaseUrl = "http://lego.zumst.com/resources/current";
            zum.codeVersion = "5.23.5-20180711-113637";
            zum.profile = "set2";
            zum.homeMigration = false;
            zum.photoNewsAdIndex = 1;
            zum.refresh = false;
            zum.layout = {};
            zum.layout[zum.page] = {
                type: "type_3a",
                useShopping:1,
                useNews:1
            };
            zum.settings = {
                refreshTime: '600000',
                maxRefreshSkipCount: '18',
                newsFixMinHeight: 0,
                nfd: '300',
                dlt: '_blank',
                base: {
                    "st": "1",
                    "lt": "0",
                    "eng": "",
                    "ken": "0",
                    "hbx": "A50|G17849|A17917|G32",
                    "hlo": "3a",
                    "hlus": "1",
                    "p": "0",
                    "mxp": "10",
                    "mbx": "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
                    "lo": "4",
                    "bx": "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
                    "lus": "1"
                },
                cookies: null,
                rwcc: null ,
                eaa: '1',
                enlf: false,
                hdto:300,
                svto:20000,
                smdt:700,
                usz:true,
                uszsf:true,
                vtd:false,
                vtml:false
            };
            zum.hub = {};
        })();
        var tmpNc = null;
    </script></head>
<body class=" ">
<div class="skip_navi"><a href="#zum-container"onclick="document.getElementById('zum-container').tabIndex = -1;document.getElementById('zum-container').focus();return false;">컨텐츠바로가기</a><a href="#zum-newsBox"onclick="document.getElementById('zum-newsBox').tabIndex = -1;document.getElementById('zum-newsBox').focus();return false;">뉴스박스바로가기</a><a href="#zum-shoppingBox"onclick="document.getElementById('zum-shoppingBox').tabIndex = -1;document.getElementById('zum-shoppingBox').focus();return false;">쇼핑박스바로가기</a><a href="#zum-hubBox"onclick="document.getElementById('zum-hubBox').tabIndex = -1;document.getElementById('zum-hubBox').focus();return false;">허브바로가기</a></div><div id="zum_event_layer" style="display:none"></div><div class="bg_gnb"></div><div id="wrap"><!-- 전체 페이징 --><div id="zum_paging" class="wrap_paging"><div class="fix_btn prev d_prev" style="display:none;"><a href="javascript:;" onclick="return zum.initialized;" data-pos="front_pageleft"><span class="arrow">이전</span><strong class="num_1 d_num">1</strong><em>페이지</em></a></div><div class="fix_btn next d_next" style="display:none;"><a href="javascript:;" onclick="return zum.initialized;" data-pos="front_pageright"><span class="arrow">다음</span><strong class="num_1 d_num">1</strong><em>페이지</em></a></div></div><div id="header"><div class="gnb_wrap"><div class="gnb"><ul class="gnb_service"><li><a href="http://www.egloos.com/" target="_blank" class="d_gnb_stat" data-cm="outlink">이글루스</a></li><li><a href="http://swing-browser.com?utm_source=zum&utm_medium=gnb" target="_blank" class="d_gnb_stat" data-cm="outlink">스윙브라우저</a></li></ul><div class="gnb_user"><a href="https://user.zum.com/login/general?targetUrl=http://zum.com" class="btn_login d_gnb_stat" data-cm="outlink">로그인</a></div></div></div><!-- 검색 --><div class="box_search"><!-- zum 기본로고 --><h1 class="logo"><a id="d_logo" href="/page/go" onclick="return zum.initialized;"><img src="http://lego.zumst.com/resources/current/images/img_zum_logo_2x.png" alt="ZUM" width="113" height="34"></a></h1><!-- zum 기본로고 END --><!-- zum 두들 --><div id="adx_zum_main_doodle_default_left"></div><div id="adx_zum_main_doodle_default_right"><div class="doodle doodle_right" style="margin-top:0px;margin-left:0px;"><a class="d_background" href=" http://www.zuminternet.com/inside_zum/24" target="_blank" data-item-Id="234740"><img src=" http://post3.zumst.com/legocms/2018/07/12/14/7cc507afc03841ae89a919e07836d66c.jpg"width="310"height="92"border="0" alt="대세 아이돌 뉴스만 골라 보려면? 뉴스볼 땐 뉴썸"></a></div></div><!-- 캐치프레이즈 전용 두들 --><!-- zum 두들 END --><!-- 검색창 --><form action="http://search.zum.com/search.zum" id="searchForm"><fieldset><legend class="blind">검색</legend><div id="searchEngineBox" class="engine"></div><input type="hidden" name="method" value="uni"><input type="hidden" name="option" value="accu"><input type="hidden" name="rd" value=1><input type="hidden" id="searchQueryMethod" name="qm" value="f_typing.top"><div class="bg_box"><input type="text" id="searchText" name="query" value="" size="40" autocomplete="off" style="ime-mode: active;" title="검색어를 입력하세요."></div><div id="searchParams" class="dN"></div><span class="btn_search"><button id="searchSubmit" type="button" title="검색"><span>검색</span></button></span><div class="layer_suggest" id="searchSuggest" style="display:none"></div></fieldset></form><!-- 검색창 END --><div id="guide_query" class="search_q"><strong class="blind">검색어</strong><ul class="hide_y d_guide_query"><li class="fir"><a href="http://search.zum.com/search.zum?method=uni&option=accu&qm=g_guidetxt.top&query=%EC%83%88%EB%A7%88%EC%9D%84%EA%B8%88%EA%B3%A0%20%EA%B0%95%EB%8F%84" class="d_guide_query_click" >새마을금고 강도</a></li><li><a href="http://search.zum.com/search.zum?method=uni&option=accu&qm=g_guidetxt.top&query=AG%20%EB%AA%85%EB%8B%A8%20%EB%B0%9C%ED%91%9C" class="d_guide_query_click" >AG 축구 명단 발표</a></li><li><a href="http://search.zum.com/search.zum?method=uni&option=accu&qm=g_guidetxt.top&query=%EC%94%A8%EC%97%98%20%EC%96%91%ED%98%84%EC%84%9D" class="d_guide_query_click" >씨엘 양현석 댓글</a></li><li><a href="http://search.zum.com/search.zum?method=uni&option=accu&qm=g_guidetxt.top&query=%EA%B9%80%EC%9A%B0%EB%B9%88%20%EB%B9%84%EC%9D%B8%EB%91%90%EC%95%94" class="d_guide_query_click" >김우빈 비인두암</a></li></ul><div class="btn_paging d_btn_paging"><a href="javascript:;" class="prev d_prev" data-page="1" data-cm="left" ><span class="blind">이전</span></a><a href="javascript:;" class="next d_next" data-page="1" data-cm="right" ><span class="blind">다음</span></a></div></div><script>if (!('autofocus' in document.createElement('input'))) {if(!window['searchTargeting']) {document.getElementById('searchText').focus();}}</script></div><!-- 메뉴 바 --><div class="header_nav_bar"><div class="nav_wrap"><div class="nav_zum"><!-- nav_box_on : 서비스 더보기 --><h3 class="blind">줌닷컴 서비스 네비게이션</h3><ul class="nav_menu"><li><a href="http://news.zum.com/" class="nav_newszum d_header_stat" data-cm="outlink"><span>뉴스줌</span></a></li><li><a href="http://hub.zum.com/" class="nav_hubzum d_header_stat" data-cm="outlink"><span>허브줌</span></a></li><li><a href="http://shopping.zum.com/" class="nav_shoppingzum d_header_stat" data-cm="outlink"><span>쇼핑줌</span></a></li><li><a href="http://coin.zum.com/" class="nav_coinzum d_header_stat" data-cm="outlink"><span>코인줌</span><b class="icon_highlight"></b></a></li><li><a href="http://stockinfo.zum.com/" class="nav_stockinfo d_header_stat" data-cm="outlink"><span>증권정보</span></a></li></ul><div class="nav_more"><a href="javascript:;" class="btn_unfold" data-cm="category_open"><span>더보기</span></a><a href="javascript:;" class="btn_fold" data-cm="category_close"><span>접기</span></a></div><div class="nav_box"><div class="service_list"><div class="list"><h4><a href="http://news.zum.com/" class="d_header_stat" data-cm="news_home">뉴스줌</a></h4><ul><li><a href="http://news.zum.com/latest" class="d_header_stat" data-cm="news_latest">최신뉴스</a></li><li><a href="http://news.zum.com/front?c=01" class="d_header_stat" data-cm="news_politics">정치</a></li><li><a href="http://news.zum.com/front?c=02" class="d_header_stat" data-cm="news_society">사회</a></li><li><a href="http://news.zum.com/front?c=03" class="d_header_stat" data-cm="news_economy">경제</a></li><li><a href="http://news.zum.com/front?c=04" class="d_header_stat" data-cm="news_international">국제</a></li><li><a href="http://news.zum.com/front?c=08" class="d_header_stat" data-cm="news_it">IT/과학</a></li><li><a href="http://news.zum.com/front?c=07" class="d_header_stat" data-cm="news_culture">문화</a></li><li><a href="http://news.zum.com/front?c=05" class="d_header_stat" data-cm="news_sports">스포츠</a></li><li><a href="http://news.zum.com/front?c=06" class="d_header_stat" data-cm="news_entertainment">연예</a></li><li><a href="http://news.zum.com/front?c=09" class="d_header_stat" data-cm="news_leadingarticle">사설/칼럼</a></li></ul></div><div class="list"><h4><a href="http://hub.zum.com/" class="d_header_stat" data-cm="hub_home">허브줌</a></h4><ul><li><a href="http://hub.zum.com/life" class="d_header_stat" data-cm="hub_life">라이프</a></li><li><a href="http://hub.zum.com/food" class="d_header_stat" data-cm="hub_food">푸드</a></li><li><a href="http://hub.zum.com/trip" class="d_header_stat" data-cm="hub_trip">여행</a></li><li><a href="http://hub.zum.com/culture" class="d_header_stat" data-cm="hub_culture">컬처</a></li><li><a href="http://hub.zum.com/it" class="d_header_stat" data-cm="hub_it">테크</a></li><li><a href="http://hub.zum.com/biz" class="d_header_stat" data-cm="hub_biz">비즈</a><b class="icon_new">new</b></li><li><a href="http://hub.zum.com/issue" class="d_header_stat" data-cm="hub_issue">이슈</a></li><li><a href="http://hub.zum.com/entertainment" class="d_header_stat" data-cm="hub_entertainment">연예</a></li><li><a href="http://spoonfeed.hub.zum.com/" class="d_header_stat" data-cm="hub_spoonfeed">스푼피드</a><b class="icon_new">new</b></li></ul></div><div class="list"><h4><a href="http://shopping.zum.com/" class="d_header_stat" data-cm="shopping_home">쇼핑줌</a></h4><ul><li><a href="http://shopping.zum.com/best" class="d_header_stat" data-cm="shopping_bestmall">베스트몰</a></li><li><a href="http://shopping.zum.com/popular" class="d_header_stat" data-cm="shopping_hotitem">인기상품</a></li><li><a href="http://shopping.zum.com/premium" class="d_header_stat" data-cm="shopping_showroom">프리미엄쇼룸</a></li><li><a href="http://shopping.zum.com/trend" class="d_header_stat" data-cm="shopping_trend">쇼핑트렌드</a></li></ul></div><div class="list"><h4><a href="http://coin.zum.com/" class="d_header_stat" data-cm="coin_home">코인줌</a><b class="icon_new">new</b></h4><ul><li><a href="http://coin.zum.com/news" class="d_header_stat" data-cm="coin_news">뉴스</a></li><li><a href="http://coin.zum.com/realtime" class="d_header_stat" data-cm="coin_realtime">실시간반응</a></li><li><a href="http://coin.zum.com/price" class="d_header_stat" data-cm="coin_price">시세정보</a></li><li><a href="http://coin.zum.com/channel" class="d_header_stat" data-cm="coin_channel">추천채널</a></li></ul></div><div class="list"><h4><a href="http://stockinfo.zum.com/home" class="d_header_stat" data-cm="stock_home">증권정보</a></h4><ul><li><a href="http://stockinfo.zum.com/investment/information/home" class="d_header_stat" data-cm="stock_info">투자정보</a></li><li><a href="http://stockinfo.zum.com/investment/strategies/home" class="d_header_stat" data-cm="stock_strategy">투자전략</a></li></ul></div><div class="list"><h4><a href="http://tour.zum.com" class="d_header_stat" data-cm="tour_home">여행줌</a><b class="icon_new">new</b></h4><ul><li><a href="http://tour.zum.com/Package/SubMain_CA2.aspx?MLoc=01&Theme=THE88&startLocation=ICN&location=LOC3&location2=LOC3" class="d_header_stat" data-cm="tour_package">패키지여행</a></li><li><a href="http://tour.zum.com/SubMain/CA/honeymoon2.aspx?MLoc=01&Theme=THE3&startLocation=ICN&location=LOC3" class="d_header_stat" data-cm="tour_honeymoon">허니문</a></li></ul></div><div class="list"><h4><a href="http://www.egloos.com/" class="d_header_stat" data-cm="blog_egloos">이글루스</a></h4></div></div><div class="mobile_list"><div class="list"><h4>모바일 앱<b class="icon_arrow"></b></h4><ul><li><a href="http://search.zum.com/search.zum?method=uni&option=accu&qm=g_gnb.top&query=%EC%A4%8C%EC%95%B1" target="_blank" class="d_header_stat" data-cm="zum_app"><b class="icon_zum_app"></b>ZUM앱</a></li><li><a href="http://shozzle.zum.com/intro/#intro&utm_source=zummain&utm_medium=lnb" target="_blank" class="d_header_stat" data-cm="shozzle_app"><b class="icon_shozzle_app"></b>쇼즐앱</a><b class="icon_new">new</b></li><li><a href="http://newsum.zum.com/?utm_source=zummain&utm_medium=lnb&utm_campaign=newsum" target="_blank" class="d_header_stat" data-cm="newsum_app"><b class="icon_newsum_app"></b>뉴썸앱</a><b class="icon_new">new</b></li><li><a href="http://search.zum.com/search.zum?method=uni&option=accu&qm=g_gnb.top&rd=1&query=%EC%9D%B4%EA%B8%80%EB%A3%A8%EC%8A%A4+%EB%AA%A8%EB%B0%94%EC%9D%BC%EC%95%B1" target="_blank" class="d_header_stat" data-cm="egloos_app"><b class="icon_egloos_app"></b>이글루스앱</a></li><li><a href="http://www.zuminternet.com/inside_zum/26?utm_source=zummain&utm_medium=lnb" target="_blank" class="d_header_stat" data-cm="realreview_app"><b class="icon_realreview_app"></b>리얼리뷰앱</a><b class="icon_new">new</b></li><li><a href="http://swing-browser.com/?utm_source=zum&utm_medium=gnb" target="_blank" class="d_header_stat" data-cm="swing_app"><b class="icon_swing_app"></b>스윙 브라우저</a></li></ul></div></div></div></div><div class="nav_favorite_sites d_box_favorite_sites"><!-- 자주가는 사이트 --><script type="text/javascript">window['myFavoriteSiteJson'] = [{"id":107958,"target":"_blank","title":"네이버","image":"http://post3.zumst.com/legocms/2016/07/06/11/9bc63a8a14ad4ae39eb181fe002f3bcf.png","image2":"http://post3.zumst.com/legocms/2017/10/31/20/76336c2d152e405286f041e05a64b738.png","previewImage":null,"url":"http://www.naver.com/","defaultRank":1,"fixed":false,"configCategorySlotKey":"favorite_site_3_portal_view","configCategorySlotTitle":"포털","configCategorySlotId":171,"configCategorySlotRank":1,"configItemRank":1,"preview":false},{"id":107961,"target":"_blank","title":"다음","image":"http://post3.zumst.com/legocms/2016/07/06/11/543ff736d81244a687e308fb6e5f8929.png","image2":"http://post3.zumst.com/legocms/2017/10/31/20/3633d860609f48eaad9c5b519ff6ffdb.png","previewImage":null,"url":"https://www.daum.net/","defaultRank":2,"fixed":false,"configCategorySlotKey":"favorite_site_3_portal_view","configCategorySlotTitle":"포털","configCategorySlotId":171,"configCategorySlotRank":1,"configItemRank":7,"preview":false},{"id":107982,"target":"_blank","title":"유튜브","image":"http://post3.zumst.com/legocms/2016/07/06/13/0979f3c561b348dc9e6fd3a8c47d3862.png","image2":"http://post3.zumst.com/legocms/2017/10/31/20/9e853a7623d94fb1ac59a3a6af9520e0.png","previewImage":null,"url":"http://www.youtube.com/","defaultRank":3,"fixed":false,"configCategorySlotKey":"favorite_site_3_video_view","configCategorySlotTitle":"동영상·엔터","configCategorySlotId":173,"configCategorySlotRank":1,"configItemRank":1,"preview":false},{"id":107964,"target":"_blank","title":"구글","image":"http://post3.zumst.com/legocms/2017/10/30/16/ea09ff81358d4a9e8b7ced3d7fbd89e4.png","image2":"http://post3.zumst.com/legocms/2017/10/31/20/2f7110f0c2e44d1a9eac87e062f29aa5.png","previewImage":null,"url":"https://www.google.co.kr/","defaultRank":4,"fixed":false,"configCategorySlotKey":"favorite_site_3_portal_view","configCategorySlotTitle":"포털","configCategorySlotId":171,"configCategorySlotRank":1,"configItemRank":13,"preview":false},{"id":107994,"target":"_blank","title":"페이스북","image":"http://post3.zumst.com/legocms/2016/07/06/13/e7210f7d8512450ebe3083cb26ac8b05.png","image2":"http://post3.zumst.com/legocms/2017/10/31/20/fce67757e9584aa78694dc213a15bb6c.png","previewImage":null,"url":"http://www.facebook.com/","defaultRank":5,"fixed":false,"configCategorySlotKey":"favorite_site_3_sns_view","configCategorySlotTitle":"SNS·블로그","configCategorySlotId":172,"configCategorySlotRank":1,"configItemRank":1,"preview":false},{"id":107946,"target":"_blank","title":"은행","image":"http://post3.zumst.com/legocms/2016/07/06/11/36b0925e6fad427a8625b7dba04064bf.png","image2":"http://post3.zumst.com/legocms/2017/10/31/20/d4a548c6fb284ace92973d1079872374.png","previewImage":null,"url":"http://search.zum.com/search.zum?method=uni&option=accu&qm=g_favorite.top&query=%EB%B0%94%EB%A1%9C%EC%B0%BE%EA%B8%B0%20%EC%9D%80%ED%96%89%20%EC%82%AC%EC%9D%B4%ED%8A%B8","defaultRank":6,"fixed":false,"configCategorySlotKey":"favorite_site_3_favoritesite_view","configCategorySlotTitle":"즐겨찾기","configCategorySlotId":174,"configCategorySlotRank":4,"configItemRank":1,"preview":true},{"id":107952,"target":"_blank","title":"지도","image":"http://post3.zumst.com/legocms/2016/07/06/11/fde01722008346258b5e889ccb9b4439.png","image2":"http://post3.zumst.com/legocms/2017/10/31/20/22465c031ade4f02b09fee87804a84ee.png","previewImage":null,"url":"http://search.zum.com/search.zum?method=uni&option=accu&qm=g_favorite.top&query=%EB%B0%94%EB%A1%9C%EC%B0%BE%EA%B8%B0%20%EC%A7%80%EB%8F%84%20%EC%82%AC%EC%9D%B4%ED%8A%B8","defaultRank":7,"fixed":false,"configCategorySlotKey":"favorite_site_3_favoritesite_view","configCategorySlotTitle":"즐겨찾기","configCategorySlotId":174,"configCategorySlotRank":4,"configItemRank":7,"preview":true}];</script><h3><span class="blind">자주가는 사이트</span></h3><div class="site_list"><ul class="d_site_list"><li class="d_pos"><a href="http://www.naver.com/" class="d_item" target="_blank" data-idx="107958" data-disabled="false" data-order="1" data-input="false"><img src="http://post3.zumst.com/legocms/2017/10/31/20/76336c2d152e405286f041e05a64b738.png" class="" alt="네이버" onerror='this.onerror=null;this.src="http://lego.zumst.com/resources/current/images/f_s_default_logo_20171030.png";'><span class="title">네이버</span></a></li><li class="d_pos"><a href="https://www.daum.net/" class="d_item" target="_blank" data-idx="107961" data-disabled="false" data-order="2" data-input="false"><img src="http://post3.zumst.com/legocms/2017/10/31/20/3633d860609f48eaad9c5b519ff6ffdb.png" class="" alt="다음" onerror='this.onerror=null;this.src="http://lego.zumst.com/resources/current/images/f_s_default_logo_20171030.png";'><span class="title">다음</span></a></li><li class="d_pos"><a href="http://www.youtube.com/" class="d_item" target="_blank" data-idx="107982" data-disabled="false" data-order="3" data-input="false"><img src="http://post3.zumst.com/legocms/2017/10/31/20/9e853a7623d94fb1ac59a3a6af9520e0.png" class="" alt="유튜브" onerror='this.onerror=null;this.src="http://lego.zumst.com/resources/current/images/f_s_default_logo_20171030.png";'><span class="title">유튜브</span></a></li><li class="d_pos"><a href="https://www.google.co.kr/" class="d_item" target="_blank" data-idx="107964" data-disabled="false" data-order="4" data-input="false"><img src="http://post3.zumst.com/legocms/2017/10/31/20/2f7110f0c2e44d1a9eac87e062f29aa5.png" class="" alt="구글" onerror='this.onerror=null;this.src="http://lego.zumst.com/resources/current/images/f_s_default_logo_20171030.png";'><span class="title">구글</span></a></li><li class="d_pos"><a href="http://www.facebook.com/" class="d_item" target="_blank" data-idx="107994" data-disabled="false" data-order="5" data-input="false"><img src="http://post3.zumst.com/legocms/2017/10/31/20/fce67757e9584aa78694dc213a15bb6c.png" class="" alt="페이스북" onerror='this.onerror=null;this.src="http://lego.zumst.com/resources/current/images/f_s_default_logo_20171030.png";'><span class="title">페이스북</span></a></li><li class="d_pos"><a href="http://search.zum.com/search.zum?method=uni&option=accu&qm=g_favorite.top&query=%EB%B0%94%EB%A1%9C%EC%B0%BE%EA%B8%B0%20%EC%9D%80%ED%96%89%20%EC%82%AC%EC%9D%B4%ED%8A%B8" class="d_item" target="_blank" data-idx="107946" data-disabled="false" data-order="6" data-input="false"><img src="http://post3.zumst.com/legocms/2017/10/31/20/d4a548c6fb284ace92973d1079872374.png" class="" alt="은행" onerror='this.onerror=null;this.src="http://lego.zumst.com/resources/current/images/f_s_default_logo_20171030.png";'><span class="title">은행</span></a></li><li class="d_pos"><a href="http://search.zum.com/search.zum?method=uni&option=accu&qm=g_favorite.top&query=%EB%B0%94%EB%A1%9C%EC%B0%BE%EA%B8%B0%20%EC%A7%80%EB%8F%84%20%EC%82%AC%EC%9D%B4%ED%8A%B8" class="d_item" target="_blank" data-idx="107952" data-disabled="false" data-order="7" data-input="false"><img src="http://post3.zumst.com/legocms/2017/10/31/20/22465c031ade4f02b09fee87804a84ee.png" class="" alt="지도" onerror='this.onerror=null;this.src="http://lego.zumst.com/resources/current/images/f_s_default_logo_20171030.png";'><span class="title">지도</span></a></li><li><a href="http://adr.zum.com/click?method=SHOPPING_OPEN_SITE&key=SOS1&hc=851652221" target="_blank" class="d_shopping_item d_item" data-order="8" data-id="SOS1"><img src="http://lego.zumst.com/resources/current/images/sample/sample_favicon_ad2.png" alt="이랜드몰"><span class="title">이랜드몰</span></a></li></ul></div><a href="#setup" class="btn_setup d_btn_setup" title="사이트 목록 설정" id="d_btn_open_favorite_site">설정</a></div></div></div><!-- // 메뉴 바 --><div id="adx_zum_whole_doodle"></div> </div>
    <!-- 헤더용 딤드 레이어 마스크 -->
    <div class="header_mask_under" style="display:none"></div>
    <div id="container">
        <h2 class="skip_anchor" id="zum-container">줌닷컴 시작페이지 컨텐츠</h2>
        <div id="container_placeholder" style="display:none"></div>
        <div id="wrap_ad_minisite" style="position:absolute;top:0;left:0;z-index:140"></div>
        <div id="wrap_container" class="container_wrap d_container_wrap" data-object="container" >
            <div id="adx_zum_main_leftwing" class="box_wing_banner"></div>
            <div id="banner_lefttop" class="box_top_main_banner">
            </div>
            <div class="box_shopping_favorite d_box_shopping_favorite">
                <style>
                    .box_shopping_favorite li a span {
                        background: url("http://post3.zumst.com/legocms/2017/10/19/10/958de3ef597f495c93bda1b3de610162.png") no-repeat;
                    }
                </style>
                <h3><span>쇼핑 즐겨찾기</span></h3>
                <ul>
                    <li>
                        <a data-order="1" href="http://adr.zum.com/click?method=SHOPPING_FAVORITE_SITE&key=SFS200&hc=244892401"
                           title="지마켓" target="_blank" class="d_shopping_favorite_logo">
                            <span class="logo_1">지마켓</span>
                        </a>
                    </li>
                    <li>
                        <a data-order="2" href="http://adr.zum.com/click?method=SHOPPING_FAVORITE_SITE&key=SFS201&hc=1699587034"
                           title="옥션" target="_blank" class="d_shopping_favorite_logo">
                            <span class="logo_2">옥션</span>
                        </a>
                    </li>
                    <li>
                        <a data-order="3" href="http://adr.zum.com/click?method=SHOPPING_FAVORITE_SITE&key=SFS202&hc=1951512102"
                           title="하프클럽" target="_blank" class="d_shopping_favorite_logo">
                            <span class="logo_3">하프클럽</span>
                        </a>
                    </li>
                    <li>
                        <a data-order="4" href="http://adr.zum.com/click?method=SHOPPING_FAVORITE_SITE&key=SFS203&hc=1639938461"
                           title="2018년에도 계속되는&#10;11번가 스페셜한 혜택 보러 가기 !" target="_blank" class="d_shopping_favorite_logo">
                            <span class="logo_4">11번가</span>
                        </a>
                    </li>
                    <li>
                        <a data-order="5" href="http://adr.zum.com/click?method=SHOPPING_FAVORITE_SITE&key=SFS534&hc=1179552361"
                           title="위메프" target="_blank" class="d_shopping_favorite_logo">
                            <span class="logo_5">위메프</span>
                        </a>
                    </li>
                    <li>
                        <a data-order="6" href="http://adr.zum.com/click?method=SHOPPING_FAVORITE_SITE&key=SFS205&hc=843450166"
                           title="쿠팡" target="_blank" class="d_shopping_favorite_logo">
                            <span class="logo_6">쿠팡</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="wrap_box">
                <div class="wrap_fixed">
                    <!-- 뉴스박스 -->
                    <div class="news_box" id="zum-newsBox">
                        <div class="news_list d_news_list">
                            <div class="menu d_menu" data-seq="[1, 0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]"><h3 data-page="3" data-sectioncode="302" data-tabname="home" class="d_mouseout on" data-url="http://news.zum.com/" ><a href="javascript:;" class="tab_1"><span>종합</span></a><div style="display:none;" class="door_data"><span data-page="0" data-section="302" data-url="http://news.zum.com/zum/view?id=0722018071646401790&v=2" data-type="first" data-category="사회">구름 한점 없이 뻥 뚫린 한반도<br>위성으로 본 '폭염 지도'</span><span data-page="0" data-section="302" data-url="http://news.zum.com/zum/view?id=0032018071646400536&v=2" data-type="last" data-category="경제">무더위에 여름철 전력수요 역대 최고…"공급은 충분"</span><span data-page="1" data-section="302" data-url="http://news.zum.com/zum/view?id=0032018071646397097&v=2" data-type="first" data-category="사회">서지현 "안태근, 범죄자일 뿐<br>손바닥으로 하늘 못 가려"</span><span data-page="1" data-section="302" data-url="http://news.zum.com/zum/view?id=0362018071646401536&v=2" data-type="last" data-category="문화">열대야에 마시는 '치맥' 숙면 방해한다</span><span data-page="2" data-section="302" data-url="http://news.zum.com/zum/view?id=0512018071646398655&v=2" data-type="first" data-category="사회">영주 새마을금고에 복면강도<br>4300만원 털어 도주</span><span data-page="2" data-section="302" data-url="http://news.zum.com/zum/view?id=0432018071646401809&v=2" data-type="last" data-category="스포츠">남북 탁구단일팀 합동 훈련…선수들 웃음꽃</span></div></h3><div class="list" ><span class="templateType blind">a</span><ul class="thumb_news thumb_2"><li class="item"><a href="http://news.zum.com/zum/view?id=0032018071646397097&v=2&tab=home&p=1&cm=photo" data-category="사회" title="서지현 &quot;안태근, 범죄자일 뿐 손바닥으로 하늘 못 가려&quot;" onclick="return false;" class="d_newslink"><span class="thumb"><img src="http://static.news.zumst.com/images/upload/2018/07/16/20/889e5872c4ec447792bcdf8f5a5b3b99.jpg" width="143" height="75" alt=""><span class="bd"></span><span class="icon_news icon_broadcast"><span class="blind">TV방송</span></span></span>서지현 &quot;안태근, 범죄자일 뿐<br>손바닥으로 하늘 못 가려&quot;</a></li><li class="item"><a href="http://news.zum.com/zum/view?id=0722018071646401941&k=34889736&kt=2&v=2&tab=home&p=1&cm=photo" data-category="정치" title="&#39;원미동 멀고도 아름다운 동네&#39;" onclick="return false;" class="d_newslink"><span class="thumb"><img src="http://static.news.zumst.com/images/upload/2018/07/16/21/327713b7b55c4b29a1a54987163e0cf4.jpg" width="143" height="75" alt=""><span class="bd"></span><span class="icon_news icon_broadcast"><span class="blind">TV방송</span></span></span>&#39;원미동<br>멀고도 아름다운 동네&#39;</a></li></ul><ul class="txt_news"><li class="item"><a href="http://news.zum.com/zum/view?id=0432018071646401285&v=2&tab=home&p=1&cm=newsbox" data-category="사회" title="최저임금, 사실상 1만 원 넘는다?…&#39;주휴수당&#39; 착시" onclick="return false;" class="d_newslink"><strong>최저임금, 사실상 1만 원 넘는다?…&#39;주휴수당&#39; 착시</strong></a></li><li class="item"><a href="http://news.zum.com/zum/view?id=0722018071646401526&v=2&tab=home&p=1&cm=newsbox" data-category="사회" title="조양호, 회삿돈 빼돌려 자녀들 &#39;승계용 주식&#39; 사준 정황" onclick="return false;" class="d_newslink">조양호, 회삿돈 빼돌려 자녀들 &#39;승계용 주식&#39; 사준 정황</a></li><li class="item"><a href="http://news.zum.com/zum/view?id=0022018071646392083&v=2&tab=home&p=1&cm=newsbox" data-category="사회" title="&quot;어디로 가라는 겁니까&quot;…출구 캄캄한 라돈침대 사태" onclick="return false;" class="d_newslink">&quot;어디로 가라는 겁니까&quot;…출구 캄캄한 라돈침대 사태</a></li><li class="item"><a href="http://news.zum.com/zum/view?id=0722018071646402030&v=2&tab=home&p=1&cm=newsbox" data-category="사회" title="시험 치른 뒤 답안지도 빼내…교사 연구실 제 방 드나들듯" onclick="return false;" class="d_newslink">시험 치른 뒤 답안지도 빼내…교사 연구실 제 방 드나들듯</a></li></ul><ul class="txt_news"><li class="item"><a href="http://news.zum.com/zum/view?id=0092018071646401313&v=2&tab=home&p=1&cm=newsbox" data-category="정치" title="북미, 미군 유해송환 실무협상…일정·방식 논의" onclick="return false;" class="d_newslink"><strong>북미, 미군 유해송환 실무협상…일정·방식 논의</strong></a></li><li class="item"><a href="http://news.zum.com/zum/view?id=0562018071646401103&v=2&tab=home&p=1&cm=newsbox" data-category="국제" title="플라스틱의 역습…&#39;일상과의 전쟁&#39;은 시작되었다" onclick="return false;" class="d_newslink">플라스틱의 역습…&#39;일상과의 전쟁&#39;은 시작되었다</a></li><li class="item"><a href="http://news.zum.com/zum/view?id=0432018071646401433&v=2&tab=home&p=1&cm=newsbox" data-category="사회" title="&#39;달리는 찜통&#39; 된 KTX…에어컨 고장 났는데 원인 모른다?" onclick="return false;" class="d_newslink">&#39;달리는 찜통&#39; 된 KTX…에어컨 고장 났는데 원인 모른다?</a></li><li class="item"><a href="http://news.zum.com/zum/view?id=0362018071646401536&v=2&tab=home&p=1&cm=newsbox" data-category="문화" title="열대야에 마시는 &#39;치맥&#39; 숙면 방해한다" onclick="return false;" class="d_newslink">열대야에 마시는 &#39;치맥&#39; 숙면 방해한다</a></li></ul><div class="btn_paging"><span class="cnt"><strong>1</strong>/3</span><a href="javascript:;" title="이전" class="prev d_prev">이전</a><a href="javascript:;" title="다음" class="next d_next">다음</a></div></div><h3 data-sectioncode="308" data-tabname="entertain" class="d_mouseout" data-url="http://news.zum.com/front?c=06" ><a href="javascript:;" class="tab_2"><span>연예</span></a><div style="display:none;" class="door_data"><span data-page="3" data-section="308" data-url="http://news.zum.com/zum/view?id=1082018071646400061&k=1491749&kt=2&v=2" data-type="first" data-category="연예">'전역 D-4개월'<br>김준수, 근황 공개</span><span data-page="3" data-section="308" data-url="http://news.zum.com/zum/view?id=0512018071646396822&v=2" data-type="last" data-category="연예">'그녀들의 여유만만' 개편, 변화 물꼬 트나</span></div></h3><h3 data-sectioncode="307" data-tabname="sports" class="d_mouseout" data-url="http://news.zum.com/front?c=05" ><a href="javascript:;" class="tab_3"><span>스포츠</span></a><div style="display:none;" class="door_data"><span data-page="4" data-section="307" data-url="http://news.zum.com/zum/view?id=0032018071646400514&k=46388946&kt=2&v=2" data-type="first" data-category="스포츠">탁구 단일팀 환영 만찬에 참석<br>남북 선수 반응은 '극과 극'</span><span data-page="4" data-section="307" data-url="http://news.zum.com/zum/view?id=0292018071646400956&v=2" data-type="last" data-category="스포츠">라틀리프 쉰 후반전…허재의 실험</span></div></h3><h3 data-sectioncode="311" data-tabname="politics" class="d_mouseout" data-url="http://news.zum.com/front?c=01" ><a href="javascript:;" class="tab_4"><span>정치</span></a><div style="display:none;" class="door_data"><span data-page="5" data-section="311" data-url="http://news.zum.com/zum/view?id=0042018071646402238&v=2" data-type="first" data-category="정치">야 "소득 주도 성장 폐기"<br>vs 여 "보완 입법이 우선"</span><span data-page="5" data-section="311" data-url="http://news.zum.com/zum/view?id=1092018071646400464&v=2" data-type="last" data-category="정치">북한, 3년 만에 사면 단행…체제 결속 주력</span></div></h3><h3 data-sectioncode="303" data-tabname="society" class="d_mouseout" data-url="http://news.zum.com/front?c=02" ><a href="javascript:;" class="tab_5"><span>사회</span></a><div style="display:none;" class="door_data"><span data-page="6" data-section="303" data-url="http://news.zum.com/zum/view?id=0042018071646401911&v=2" data-type="first" data-category="사회">라돈 매트리스 처리 원점?<br>적재 현장 해체가 '최선'</span><span data-page="6" data-section="303" data-url="http://news.zum.com/zum/view?id=0432018071646401717&v=2" data-type="last" data-category="사회">휴가철마다 늘어나는 유기동물</span></div></h3><h3 data-sectioncode="304" data-tabname="economy" class="d_mouseout" data-url="http://news.zum.com/front?c=03" ><a href="javascript:;" class="tab_6"><span>경제</span></a><div style="display:none;" class="door_data"><span data-page="7" data-section="304" data-url="http://news.zum.com/zum/view?id=0042018071646398509&v=2" data-type="first" data-category="경제">건전지 '가성비' 최대 7배 차이<br>PB 제품이 낫다</span><span data-page="7" data-section="304" data-url="http://news.zum.com/zum/view?id=0352018071646400999&v=2" data-type="last" data-category="경제">"일이 변하는 시대, 협동조합 중요해졌다"</span></div></h3><h3 data-sectioncode="306" data-tabname="world" class="d_mouseout" data-url="http://news.zum.com/front?c=04" ><a href="javascript:;" class="tab_7"><span>국제</span></a><div style="display:none;" class="door_data"><span data-page="8" data-section="306" data-url="http://news.zum.com/zum/view?id=0432018071646401753&v=2" data-type="first" data-category="국제">파리에 휘날린 욱일기<br>유럽은 왜 조용할까</span><span data-page="8" data-section="306" data-url="http://news.zum.com/zum/view?id=0102018071646400268&v=2" data-type="last" data-category="국제">커피 한잔의 여유? 30년 뒤 금값 될라</span></div></h3><h3 data-sectioncode="305" data-tabname="it" class="d_mouseout" data-url="http://news.zum.com/front?c=08" ><a href="javascript:;" class="tab_8"><span>IT</span></a><div style="display:none;" class="door_data"><span data-page="9" data-section="305" data-url="http://news.zum.com/zum/view?id=0902018071646393417&v=2" data-type="first" data-category="IT·과학">정말 귀여운걸<br>식물 키워주는 거미로봇</span><span data-page="9" data-section="305" data-url="http://news.zum.com/zum/view?id=0492018071646400216&v=2" data-type="last" data-category="IT·과학">브라질 게임시장 성장…개발사 5년간 2배↑</span></div></h3><h3 data-sectioncode="99" data-tabname="rank" class="d_mouseout last" data-url="http://news.zum.com/" ><a href="javascript:;" class="tab_9"><span>랭킹</span></a><div style="display:none;" class="door_data"><span data-page="10" data-section="99" data-url="http://news.zum.com/zum/view?id=0432018071646401715&v=2" data-type="first" data-category="사회">"구지가 가르쳤는데 성희롱 교사? 억울"…"발언 수위 높아"</span><span data-page="10" data-section="99" data-url="http://news.zum.com/zum/view?id=0962018071646400099&v=2" data-type="last" data-category="스포츠">월드컵 결승전 난입 관중 멱살 잡은 로브렌 "정말 화났다"</span></div></h3></div>
                        </div>
                    </div>
                    <!-- //뉴스 박스 -->
                    <!-- 쇼핑박스을 사용하는 경우: 홈 or myzum에서 쇼핑박스 추가한 경우는 this.pageData.useShopping 가 1이다.-->
                    <div class="new_box_bottom news_box_bottom" style="display:none;">
                        <div class="best_news" style="display:none;"></div>
                        <div class="issue_photo" style="display:none;"></div>
                    </div>
                </div>
            </div>
            <div class="wrap_contents">
                <!-- 뉴스 view-->
                <div id="box_news_view" data-object="box_news_view" class="box_news_view" style="display:none">
                    <div class="article_loading_box" style="display:none"></div>
                    <div class="btn_news_side">
                        <a href="javascript:;" class="btn_top"><span class="bg_icon"></span>맨위로</a>
                        <a href="javascript:;" class="btn_close"><span class="bg_icon"></span>닫기</a>
                    </div>
                    <iframe id="iframe_article_box" src="about:blank" allowtransparency="true" width="606" height="1500" scrolling="no" frameborder="0" title="NEWS" allowfullscreen></iframe>
                </div>
                <div class="box_contents" id="d_box_contents">
                    <div class="box_photo_news d_box_photo_news">
                        <h3><span>핫토픽</span></h3><div class="news_list"><ul class="d_photolist" data-total="3" data-page="1"><li class="item"><a href="http://news.zum.com/zum/view?id=0032018071646400329&k=45760939&kt=2&v=2" class="d_photonewslink" data-id="46400329" data-index="1" data-kn="2" data-ol="E" ><span class="thumb"><img src="http://static.news.zumst.com/images/upload/2018/07/16/21/70e9688bfc6e4803b0c48e6c6b7e38cd.jpg" alt="" width="123" height="100"><span class="bd"></span><span class="icon_news icon_photo"><span class="blind">포토뉴스</span></span></span>프랑스, 월드컵 우승 환호 속<br>상점 약탈···경찰과 투석전도</a></li><li class="item"><a href="http://news.zum.com/zum/view?id=0432018071646398090&k=34513919&kt=2&v=2" class="d_photonewslink" data-id="46398090" data-index="2" data-kn="2" data-ol="E" ><span class="thumb"><img src="http://static.news.zumst.com/images/upload/2018/07/16/19/872d782eb21b487e866ecb7405453e02.jpg" alt="" width="123" height="100"><span class="bd"></span><span class="icon_news icon_broadcast"><span class="blind">TV방송</span></span></span>사람 많은 매장서 30초 만에<br>훔쳐 달아난 도둑들</a></li><li class="item"><a href="http://news.zum.com/zum/view?id=0102018071646391593&v=2" class="d_photonewslink" data-id="46391593" data-index="3" data-kn="-1" data-ol="E" ><span class="thumb"><img src="http://static.news.zumst.com/images/upload/2018/07/16/20/064cf6e3b7ee4b43a6e8b16e944efb7d.jpg" alt="" width="123" height="100"><span class="bd"></span></span>비닐봉지 입에 문 어린 사자<br>쓰레기에 신음하는 동물</a></li><li class="item"><a href="http://news.zum.com/zum/view?id=0102018071646382048&k=34513919&kt=2&v=2" class="d_photonewslink" data-id="46382048" data-index="4" data-kn="2" data-ol="E" ><span class="thumb"><img src="http://static.news.zumst.com/images/upload/2018/07/16/16/516a0eda78a44b0f990029ad90fcf12f.jpg" alt="" width="123" height="100"><span class="bd"></span><span class="icon_news icon_photo"><span class="blind">포토뉴스</span></span></span>200년간 관리해온 '멕시코<br>독립의 불' 아이 장난에···</a></li></ul><div class="btn_side_nav"><a href="javascript:;" title="이전" class="prev d_side_prev" data-cm="left_middle">이전</a><a href="javascript:;" title="다음" class="next d_side_next" data-cm="right_middle">다음</a></div></div><div class="btn_paging"><span class="cnt"><strong class="d_page">1</strong>/3</span><a href="javascript:;" title="이전" class="prev d_prev">이전</a><a href="javascript:;" title="다음" class="next d_next">다음</a></div>
                        <div class="news_ad_slot"><div class="item"><a href="https://blog.naver.com/vely1008/221256506140?da_ref=Yz1GUUhGN2w=" target="_blank"><span class="thumb"><img src="http://post3.zumst.com/legocms/2018/07/12/19/f2a9719d892b4857a1901f35a002a132.jpg" alt="이게뭔데? 이 난리<BR>사람들이 몰리는 이유!" width="123" height="100"><span class="bd"></span></span>이게뭔데? 이 난리<BR>사람들이 몰리는 이유!</a></div></div>
                    </div>
                    <div class="box_today_wrap d_box_today_issue">
                        <div class="today_header">
                            <a class="d_date_tab" href="http://search.zum.com/search.zum?qm=g_today.top&type=calendar&method=uni&option=accu&query=7%EC%9B%94+16%EC%9D%BC">
                                <strong class="date">7.16</strong>
                                <span class="week">월요일</span>
                            </a>
                        </div>
                        <div class="today_tab d_issue_tab">
                            <ul>
                                <li class="d_tab_li on"><a href="javascript:;" data-tab="issue" class="tab_issue d_tab"><span>실시간이슈</span></a></li>
                                <li class="d_tab_li"><a href="javascript:;" data-tab="fortune" class="tab_fortune d_tab"><span>오늘의 운세</span><strong class="icon_highlight"></strong></a></li>
                            </ul>
                        </div>
                        <div class="today_box today_issue d_today_box d_rank_search_keyword" style="display:block">
                            <h3 class="blind">실시간 이슈</h3>
                            <!-- 이슈 검색어 -->
                            <div class="issue_keyword d_rank_keyword">
                                <h4 class="blind">실시간 이슈 검색어</h4>
                                <ul class="rank_list d_rank_list d_rank_keyword_0">
                                    <li class="d_rank">
                                        <span class="r_num num_1">1</span>
                                        <a data-order="1" href="http://search.zum.com/search.zum?query=%EC%8B%9D%EC%83%A4%EB%A5%BC%20%ED%95%A9%EC%8B%9C%EB%8B%A43&qm=g_real1.top&real1_id=1&method=uni&option=accu" class="d_btn_keyword" title="식샤를 합시다3">
                                            <span class="keyword d_keyword">식샤를 합시다3</span>
                                        </a>
                                        <a data-order="1" href="http://search.zum.com/search.zum?query=%EC%8B%9D%EC%83%A4%EB%A5%BC%20%ED%95%A9%EC%8B%9C%EB%8B%A43&qm=g_real1.top&real1_id=1&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="식샤를 합시다3">
                                            <span class="keyword d_keyword">식샤를 합시다3</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_2">2</span>
                                        <a data-order="2" href="http://search.zum.com/search.zum?query=%EA%B9%80%EB%B3%91%EC%A4%80&qm=g_real1.top&real1_id=2&method=uni&option=accu" class="d_btn_keyword" title="김병준">
                                            <span class="keyword d_keyword">김병준</span>
                                        </a>
                                        <a data-order="2" href="http://search.zum.com/search.zum?query=%EA%B9%80%EB%B3%91%EC%A4%80&qm=g_real1.top&real1_id=2&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="김병준">
                                            <span class="keyword d_keyword">김병준</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_3">3</span>
                                        <a data-order="3" href="http://search.zum.com/search.zum?query=%ED%98%9C%EB%B0%95&qm=g_real1.top&real1_id=3&method=uni&option=accu" class="d_btn_keyword" title="혜박">
                                            <span class="keyword d_keyword">혜박</span>
                                        </a>
                                        <a data-order="3" href="http://search.zum.com/search.zum?query=%ED%98%9C%EB%B0%95&qm=g_real1.top&real1_id=3&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="혜박">
                                            <span class="keyword d_keyword">혜박</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_4">4</span>
                                        <a data-order="4" href="http://search.zum.com/search.zum?query=%ED%99%A9%EC%9D%98%EC%A1%B0&qm=g_real1.top&real1_id=4&method=uni&option=accu" class="d_btn_keyword" title="황의조">
                                            <span class="keyword d_keyword">황의조</span>
                                        </a>
                                        <a data-order="4" href="http://search.zum.com/search.zum?query=%ED%99%A9%EC%9D%98%EC%A1%B0&qm=g_real1.top&real1_id=4&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="황의조">
                                            <span class="keyword d_keyword">황의조</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_5">5</span>
                                        <a data-order="5" href="http://search.zum.com/search.zum?query=%EB%A7%88%EB%A7%88%EB%AC%B4&qm=g_real1.top&real1_id=5&method=uni&option=accu" class="d_btn_keyword" title="마마무">
                                            <span class="keyword d_keyword">마마무</span>
                                        </a>
                                        <a data-order="5" href="http://search.zum.com/search.zum?query=%EB%A7%88%EB%A7%88%EB%AC%B4&qm=g_real1.top&real1_id=5&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="마마무">
                                            <span class="keyword d_keyword">마마무</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_6">6</span>
                                        <a data-order="6" href="http://search.zum.com/search.zum?query=%EB%B0%B1%EC%A7%84%ED%9D%AC&qm=g_real1.top&real1_id=6&method=uni&option=accu" class="d_btn_keyword" title="백진희">
                                            <span class="keyword d_keyword">백진희</span>
                                        </a>
                                        <a data-order="6" href="http://search.zum.com/search.zum?query=%EB%B0%B1%EC%A7%84%ED%9D%AC&qm=g_real1.top&real1_id=6&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="백진희">
                                            <span class="keyword d_keyword">백진희</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_7">7</span>
                                        <a data-order="7" href="http://search.zum.com/search.zum?query=%EC%B5%9C%ED%98%84%ED%98%B8&qm=g_real1.top&real1_id=7&method=uni&option=accu" class="d_btn_keyword" title="최현호">
                                            <span class="keyword d_keyword">최현호</span>
                                        </a>
                                        <a data-order="7" href="http://search.zum.com/search.zum?query=%EC%B5%9C%ED%98%84%ED%98%B8&qm=g_real1.top&real1_id=7&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="최현호">
                                            <span class="keyword d_keyword">최현호</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_8">8</span>
                                        <a data-order="8" href="http://search.zum.com/search.zum?query=%EC%A0%9C%ED%97%8C%EC%A0%88&qm=g_real1.top&real1_id=8&method=uni&option=accu" class="d_btn_keyword" title="제헌절">
                                            <span class="keyword d_keyword">제헌절</span>
                                        </a>
                                        <a data-order="8" href="http://search.zum.com/search.zum?query=%EC%A0%9C%ED%97%8C%EC%A0%88&qm=g_real1.top&real1_id=8&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="제헌절">
                                            <span class="keyword d_keyword">제헌절</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_9">9</span>
                                        <a data-order="9" href="http://search.zum.com/search.zum?query=%ED%95%9C%ED%98%84%EB%AF%BC&qm=g_real1.top&real1_id=9&method=uni&option=accu" class="d_btn_keyword" title="한현민">
                                            <span class="keyword d_keyword">한현민</span>
                                        </a>
                                        <a data-order="9" href="http://search.zum.com/search.zum?query=%ED%95%9C%ED%98%84%EB%AF%BC&qm=g_real1.top&real1_id=9&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="한현민">
                                            <span class="keyword d_keyword">한현민</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_10">10</span>
                                        <a data-order="10" href="http://search.zum.com/search.zum?query=%EC%B4%88%EB%B3%B5&qm=g_real1.top&real1_id=10&method=uni&option=accu" class="d_btn_keyword" title="초복">
                                            <span class="keyword d_keyword">초복</span>
                                        </a>
                                        <a data-order="10" href="http://search.zum.com/search.zum?query=%EC%B4%88%EB%B3%B5&qm=g_real1.top&real1_id=10&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="초복">
                                            <span class="keyword d_keyword">초복</span>
                                        </a>
                                    </li>
                                </ul>
                                <ul class="rank_list d_rank_list d_rank_keyword_1" style="display:none;">
                                    <li class="d_rank">
                                        <span class="r_num num_11">11</span>
                                        <a data-order="11" href="http://search.zum.com/search.zum?query=%EC%B5%9C%EC%9C%A0%EB%82%98&qm=g_real1.top&real1_id=11&method=uni&option=accu" class="d_btn_keyword" title="최유나">
                                            <span class="keyword d_keyword">최유나</span>
                                        </a>
                                        <a data-order="11" href="http://search.zum.com/search.zum?query=%EC%B5%9C%EC%9C%A0%EB%82%98&qm=g_real1.top&real1_id=11&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="최유나">
                                            <span class="keyword d_keyword">최유나</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_12">12</span>
                                        <a data-order="12" href="http://search.zum.com/search.zum?query=%EA%B2%80%EB%B2%95%EB%82%A8%EB%85%80&qm=g_real1.top&real1_id=12&method=uni&option=accu" class="d_btn_keyword" title="검법남녀">
                                            <span class="keyword d_keyword">검법남녀</span>
                                        </a>
                                        <a data-order="12" href="http://search.zum.com/search.zum?query=%EA%B2%80%EB%B2%95%EB%82%A8%EB%85%80&qm=g_real1.top&real1_id=12&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="검법남녀">
                                            <span class="keyword d_keyword">검법남녀</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_13">13</span>
                                        <a data-order="13" href="http://search.zum.com/search.zum?query=%EC%85%94%ED%84%B0%20%EC%95%84%EC%9D%BC%EB%9E%9C%EB%93%9C&qm=g_real1.top&real1_id=13&method=uni&option=accu" class="d_btn_keyword" title="셔터 아일랜드">
                                            <span class="keyword d_keyword">셔터 아일랜드</span>
                                        </a>
                                        <a data-order="13" href="http://search.zum.com/search.zum?query=%EC%85%94%ED%84%B0%20%EC%95%84%EC%9D%BC%EB%9E%9C%EB%93%9C&qm=g_real1.top&real1_id=13&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="셔터 아일랜드">
                                            <span class="keyword d_keyword">셔터 아일랜드</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_14">14</span>
                                        <a data-order="14" href="http://search.zum.com/search.zum?query=%EC%9A%B8%EC%82%B0mbc&qm=g_real1.top&real1_id=14&method=uni&option=accu" class="d_btn_keyword" title="울산mbc">
                                            <span class="keyword d_keyword">울산mbc</span>
                                        </a>
                                        <a data-order="14" href="http://search.zum.com/search.zum?query=%EC%9A%B8%EC%82%B0mbc&qm=g_real1.top&real1_id=14&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="울산mbc">
                                            <span class="keyword d_keyword">울산mbc</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_15">15</span>
                                        <a data-order="15" href="http://search.zum.com/search.zum?query=%EB%8F%85%EC%84%9C%EA%B5%90%EC%9C%A1%EC%A2%85%ED%95%A9%EC%8B%9C%EC%8A%A4%ED%85%9C&qm=g_real1.top&real1_id=15&method=uni&option=accu" class="d_btn_keyword" title="독서교육종합시스템">
                                            <span class="keyword d_keyword">독서교육종합시스템</span>
                                        </a>
                                        <a data-order="15" href="http://search.zum.com/search.zum?query=%EB%8F%85%EC%84%9C%EA%B5%90%EC%9C%A1%EC%A2%85%ED%95%A9%EC%8B%9C%EC%8A%A4%ED%85%9C&qm=g_real1.top&real1_id=15&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="독서교육종합시스템">
                                            <span class="keyword d_keyword">독서교육종합시스템</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_16">16</span>
                                        <a data-order="16" href="http://search.zum.com/search.zum?query=%ED%95%98%EC%B6%98%ED%99%94%EB%82%98%EC%9D%B4&qm=g_real1.top&real1_id=16&method=uni&option=accu" class="d_btn_keyword" title="하춘화나이">
                                            <span class="keyword d_keyword">하춘화나이</span>
                                        </a>
                                        <a data-order="16" href="http://search.zum.com/search.zum?query=%ED%95%98%EC%B6%98%ED%99%94%EB%82%98%EC%9D%B4&qm=g_real1.top&real1_id=16&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="하춘화나이">
                                            <span class="keyword d_keyword">하춘화나이</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_17">17</span>
                                        <a data-order="17" href="http://search.zum.com/search.zum?query=%ED%81%AC%EB%A1%9C%EC%95%84%ED%8B%B0%EC%95%84%20%EB%8C%80%ED%86%B5%EB%A0%B9&qm=g_real1.top&real1_id=17&method=uni&option=accu" class="d_btn_keyword" title="크로아티아 대통령">
                                            <span class="keyword d_keyword">크로아티아 대통령</span>
                                        </a>
                                        <a data-order="17" href="http://search.zum.com/search.zum?query=%ED%81%AC%EB%A1%9C%EC%95%84%ED%8B%B0%EC%95%84%20%EB%8C%80%ED%86%B5%EB%A0%B9&qm=g_real1.top&real1_id=17&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="크로아티아 대통령">
                                            <span class="keyword d_keyword">크로아티아 대통령</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_18">18</span>
                                        <a data-order="18" href="http://search.zum.com/search.zum?query=%EA%B2%B0%EC%9D%B4%EA%B3%A0%EC%9D%80%20%EC%9E%91%EC%9D%80%EC%96%BC%EA%B5%B4&qm=g_real1.top&real1_id=18&method=uni&option=accu" class="d_btn_keyword" title="결이고은 작은얼굴">
                                            <span class="keyword d_keyword">결이고은 작은얼굴</span>
                                        </a>
                                        <a data-order="18" href="http://search.zum.com/search.zum?query=%EA%B2%B0%EC%9D%B4%EA%B3%A0%EC%9D%80%20%EC%9E%91%EC%9D%80%EC%96%BC%EA%B5%B4&qm=g_real1.top&real1_id=18&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="결이고은 작은얼굴">
                                            <span class="keyword d_keyword">결이고은 작은얼굴</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_19">19</span>
                                        <a data-order="19" href="http://search.zum.com/search.zum?query=%ED%83%80%EC%B9%B4%ED%95%98%ED%83%80%20%EB%AF%B8%EC%B8%A0%ED%82%A4&qm=g_real1.top&real1_id=19&method=uni&option=accu" class="d_btn_keyword" title="타카하타 미츠키">
                                            <span class="keyword d_keyword">타카하타 미츠키</span>
                                        </a>
                                        <a data-order="19" href="http://search.zum.com/search.zum?query=%ED%83%80%EC%B9%B4%ED%95%98%ED%83%80%20%EB%AF%B8%EC%B8%A0%ED%82%A4&qm=g_real1.top&real1_id=19&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="타카하타 미츠키">
                                            <span class="keyword d_keyword">타카하타 미츠키</span>
                                        </a>
                                    </li>
                                    <li class="d_rank">
                                        <span class="r_num num_20">20</span>
                                        <a data-order="20" href="http://search.zum.com/search.zum?query=%EA%B8%B0%EB%A6%84%EC%A7%84%20%EB%A9%9C%EB%A1%9C&qm=g_real1.top&real1_id=20&method=uni&option=accu" class="d_btn_keyword" title="기름진 멜로">
                                            <span class="keyword d_keyword">기름진 멜로</span>
                                        </a>
                                        <a data-order="20" href="http://search.zum.com/search.zum?query=%EA%B8%B0%EB%A6%84%EC%A7%84%20%EB%A9%9C%EB%A1%9C&qm=g_real1.top&real1_id=20&method=uni&option=accu" class="d_btn_keyword d_ready" style="top:22px" title="기름진 멜로">
                                            <span class="keyword d_keyword">기름진 멜로</span>
                                        </a>
                                    </li>
                                </ul>
                                <div class="btn_paging">
                                    <a href="javascript:;" title="이전" class="prev d_prev">이전</a>
                                    <a href="javascript:;" title="다음" class="next d_next">다음</a>
                                </div>
                            </div>
                            <!-- 간편 정보 -->
                            <div class="today_info d_rank_information"><!-- info_more : 간편 정보창 펼침 -->
                                <h4 class="blind">간편 정보</h4>
                                <div class="info_list_wrap">
                                    <ul class="info_list d_info_list">
                                        <!-- 날씨 -->
                                        <li class="on">
                                            <div class="item item_weather_short">
                                                <a href="http://search.zum.com/search.zum?query=%EC%88%98%EC%9B%90%EC%8B%9C%20%EA%B5%AC%EC%9A%B4%EB%8F%99%20%EB%82%A0%EC%94%A8&qm=g_today.top&type=weather&rc=weather&method=uni&option=accu" class="d_btn_information d_btn_weather" target="_self" data-cm="info_weather">
                                                    <div class="location">수원시 구운동</div>
                                                    <div class="weather">
                                                        <span class="icon_weather w_04"></span>
                                                        <span class="temperature"><strong>26</strong>℃</span><span class="text d_text">흐림</span>
                                                    </div>
                                                </a>
                                                <button type="button" class="btn_location d_btn_location" title="지역 변경"><span>지역 변경</span></button>
                                            </div>
                                            <div class="item item_weather_main">
                                                <div class="weather">
                                                    <a href="http://search.zum.com/search.zum?query=%EC%88%98%EC%9B%90%EC%8B%9C%20%EA%B5%AC%EC%9A%B4%EB%8F%99%20%EB%82%A0%EC%94%A8&qm=g_today.top&type=weather&rc=weather&method=uni&option=accu" class="d_btn_information d_btn_weather" data-cm="info_weather">
                                                        <span class="icon_weather w_04"></span>
                                                        <span class="temperature"><strong>26</strong>℃</span>
                                                        <span class="text_1 d_text">흐림</span>
                                                    </a>
                                                </div>
                                                <div class="air_pollution">
                                                    <a href="http://search.zum.com/search.zum?query=%EB%AF%B8%EC%84%B8%EB%A8%BC%EC%A7%80&qm=g_today.top&type=dust&rc=atmosphere&method=uni&option=accu" class="d_btn_information" data-cm="info_dust">
<span class="state state_good">
<!--
state_good : 좋음
state_normal : 보통
state_bad : 나쁨
state_worse : 매우 나쁨
-->
미세먼지 <strong>좋음</strong>
</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- 미세먼지 -->
                                        <li class="">
                                            <div class="item item_weather_short">
                                                <a href="http://search.zum.com/search.zum?query=%EB%AF%B8%EC%84%B8%EB%A8%BC%EC%A7%80&qm=g_today.top&type=dust&rc=atmosphere&method=uni&option=accu" class="d_btn_information" data-cm="info_dust">
                                                    <div class="location">수원시 구운동</div>
                                                    <div class="air_pollution">
<span class="state state_good">
<span>미세먼지</span> <strong>좋음</strong><span class="point">26</span>
</span>
                                                    </div>
                                                </a>
                                                <button type="button" class="btn_location d_btn_location" title="지역 변경"><span>지역 변경</span></button>
                                            </div>
                                        </li>
                                        <!-- 주가 -->
                                        <li class="">
                                            <div class="item item_stock">
                                                <a href="http://search.zum.com/search.zum?query=%EC%A3%BC%EA%B0%80%EC%A7%80%EC%88%98&qm=g_today.top&type=stock&rc=stockindex&method=uni&option=accu"
                                                   class="status_down d_btn_information" data-cm="info_stock"><!-- status_up : 상승, status_down : 하락 , status_same : 동일 -->
                                                    <strong class="name"><span>코스피</span></strong>
                                                    <span class="value">2,301.99</span>
                                                    <span class="status">
<span class="icon_stat">하락</span><span class="point">8.91</span>
</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="">
                                            <div class="item item_stock">
                                                <a href="http://search.zum.com/search.zum?query=%EC%A3%BC%EA%B0%80%EC%A7%80%EC%88%98&qm=g_today.top&type=stock&rc=stockindex&method=uni&option=accu"
                                                   class="status_down d_btn_information" data-cm="info_stock"><!-- status_up : 상승, status_down : 하락 , status_same : 동일 -->
                                                    <strong class="name"><span>코스닥</span></strong>
                                                    <span class="value">825.71</span>
                                                    <span class="status">
<span class="icon_stat">하락</span><span class="point">2.18</span>
</span>
                                                </a>
                                            </div>
                                        </li>
                                        <!-- 가상화폐 -->
                                        <li class="">
                                            <div class="item item_stock">
                                                <a href="http://coin.zum.com/price?cm=menu"
                                                   class="status_up d_btn_information" data-cm="info_cryptocurrency"><!-- status_up : 상승, status_down : 하락 , status_same : 동일 -->
                                                    <strong class="name"><span>비트코인</span><span class="source">(업비트)</span></strong>
                                                    <span class="value">7,349,000</span>
                                                    <span class="status">
<span class="point">+2.38%</span>
</span>
                                                </a>
                                            </div>
                                        </li>
                                        <li class="">
                                            <div class="item item_stock">
                                                <a href="http://coin.zum.com/price?cm=menu"
                                                   class="status_up d_btn_information" data-cm="info_cryptocurrency"><!-- status_up : 상승, status_down : 하락 , status_same : 동일 -->
                                                    <strong class="name"><span>이더리움</span><span class="source">(업비트)</span></strong>
                                                    <span class="value">524,700</span>
                                                    <span class="status">
<span class="point">+3.78%</span>
</span>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <a href="javascript:;" id="btn_information_group" class="btn_info_more"><span>간편 정보 펼침/접힘</span></a>
                            </div>
                            <!-- 지역 변경 레이어 -->
                            <div class="layer_weather_location d_layer_weather_location" style="display:none;">
                                <div class="location_search">
                                    <input id="d_location_search_input" type="text" title="지역 검색" value=""><!-- on : 인풋창 포커스 -->
                                    <p class="help">지역을 검색해주세요(동/읍/면)</p>
                                </div>
                                <div class="location_list">
                                    <ul style="display:block;">
                                    </ul>
                                    <p class="list_none" style="display:none;">
                                        검색결과가 없습니다.
                                    </p>
                                </div>
                                <div class="location_result">
                                    <span class="location">수원시 구운동</span>
                                    <button type="button" class="btn_location d_btn_location" title="지역 변경"><span>지역 변경</span></button>
                                </div>
                                <a href="javascript:;" id="btn_location_close" class="btn_close d_btn_location_close"><span>닫기</span></a>
                            </div></div>
                        <div class="today_box today_fortune d_today_box d_rank_fortune" style="display:none">
                        </div>
                    </div>
                    <div id="wrap_ad_main" class="box_cont_banner" data-imageurl="http://lego.zumst.com/resources/current/images/banner/filler/branding6.jpg" data-outurl="http://advert.estsoft.com/?event=201611162013824" data-pos="bn_brwidget_big" data-cm="filler" data-width="300" data-height="150"></div>
                    <!-- 허브 시작 -->
                    <div class="box_hub d_box_hub box_full" id="zum-hubBox">
                        <a href="http://hub.zum.com/" data-cm="tit" data-pos="hub_home" class="title_home d_h_home_contents"><span>허브줌</span></a>
                        <div class="hub_sec d_hub_contentsbox">
                            <div class="hub_tabs">
                                <ul class="d_hub_tabs_ul">
                                    <li class="d_hub_cb_tab" data-name="popularity">
                                        <a href="javascript:;" class="d_h_function t_popularity" data-pos="hubtab" data-name="popularity" data-type="contents_box2" data-order="1"><span>인기</span></a>
                                    </li>
                                    <li class="d_hub_cb_tab" data-name="issue2">
                                        <a href="javascript:;" class="d_h_function t_issue2" data-pos="hubtab" data-name="issue2" data-type="contents_box2" data-order="2"><span>이슈2</span></a>
                                    </li>
                                    <li class="d_hub_cb_tab" data-name="entertainment2">
                                        <a href="javascript:;" class="d_h_function t_entertainment2" data-pos="hubtab" data-name="entertainment2" data-type="contents_box2" data-order="3"><span>연예2</span></a>
                                    </li>
                                    <li class="d_hub_cb_tab" data-name="biz">
                                        <a href="javascript:;" class="d_h_function t_biz" data-pos="hubtab" data-name="biz" data-type="contents_box2" data-order="4"><span>비즈</span></a>
                                    </li>
                                    <li class="d_hub_cb_tab" data-name="it2">
                                        <a href="javascript:;" class="d_h_function t_it2" data-pos="hubtab" data-name="it2" data-type="contents_box2" data-order="5"><span>테크2</span></a>
                                    </li>
                                    <li class="d_hub_cb_tab" data-name="fun2">
                                        <a href="javascript:;" class="d_h_function t_fun2" data-pos="hubtab" data-name="fun2" data-type="contents_box2" data-order="6"><span>펀2</span></a>
                                    </li>
                                    <li class="d_hub_cb_tab" data-name="life2">
                                        <a href="javascript:;" class="d_h_function t_life2" data-pos="hubtab" data-name="life2" data-type="contents_box2" data-order="7"><span>라이프2</span></a>
                                    </li>
                                    <li class="d_hub_cb_tab" data-name="food2">
                                        <a href="javascript:;" class="d_h_function t_food2" data-pos="hubtab" data-name="food2" data-type="contents_box2" data-order="8"><span>푸드2</span></a>
                                    </li>
                                    <li class="d_hub_cb_tab" data-name="trip2">
                                        <a href="javascript:;" class="d_h_function t_trip2" data-pos="hubtab" data-name="trip2" data-type="contents_box2" data-order="9"><span>여행2</span></a>
                                    </li>
                                    <li class="d_hub_cb_tab on" data-name="culture2">
                                        <a href="javascript:;" class="d_h_function t_culture2" data-pos="hubtab" data-name="culture2" data-type="contents_box2" data-order="10"><span>컬처2</span></a>
                                    </li>
                                    <li class="d_hub_cb_tab" data-name="shopping2">
                                        <a href="javascript:;" class="d_h_function t_shopping2" data-pos="hubtab" data-name="shopping2" data-type="contents_box2" data-order="11"><span>쇼핑</span></a>
                                    </li>
                                </ul>
                                <div class="tab_nav">
                                    <a href="javascript:;" title="이전" class="prev d_top_before" data-cm="left" data-type="contents" data-name="culture2" data-order="10">이전</a>
                                    <a href="javascript:;" title="다음" class="next d_top_next" data-cm="right" data-type="contents" data-name="culture2" data-order="10">다음</a>
                                </div>
                            </div>
                            <div class="d_hub_cb_contents" data-name="culture2" data-type="contents" >
                                <div class="hub_content d_hub_content" data-name="culture" data-type="contents" data-order="10">
                                    <h2 class="blind">culture2</h2>
                                    <div class="h_template_3x4">
                                        <ul class="item_list">
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_thumb">
                                                    <a class="d_h_contents" href="http://hub.zum.com/chosun/28156" target="_self" data-order="1" data-templet="1" data-title="벽지도 타일도 페인트칠도 없는 집" data-pos="item" data-cm="img" data-contents="28156" data-item-id="234898">
                                                        <div class="thumb">
                                                            <span class="mask"></span>
                                                            <img src="http://post3.zumst.com/legocms/2018/07/12/17/88b4c95a2987489f9d1d96ac17487abb.jpg" alt="벽지도 타일도 페인트칠도 없는 집" data-cm="img">
                                                        </div>
                                                        <span class="bd" data-cm="img"></span>
                                                        <strong class="title" data-cm="tit">벽지도 타일도 페인트칠도 없는 집</strong>
                                                    </a>
                                                    <span class="source">
조선일보
</span>
                                                </div>
                                            </li>
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_thumb">
                                                    <a class="d_h_contents" href="http://hub.zum.com/yonhapnews/28161" target="_self" data-order="2" data-templet="1" data-title="미국은 어쩌다 트럼프 같은&lt;br&gt;대통령을 만나게 됐을까" data-pos="item" data-cm="img" data-contents="28161" data-item-id="234899">
                                                        <div class="thumb">
                                                            <span class="mask"></span>
                                                            <img src="http://post3.zumst.com/legocms/2018/07/12/17/cb33c19141a74c2fabb36c7a2f1ddb1c.jpg" alt="미국은 어쩌다 트럼프 같은&lt;br&gt;대통령을 만나게 됐을까" data-cm="img">
                                                        </div>
                                                        <span class="bd" data-cm="img"></span>
                                                        <strong class="title" data-cm="tit">미국은 어쩌다 트럼프 같은<br>대통령을 만나게 됐을까</strong>
                                                    </a>
                                                    <span class="source">
연합뉴스
</span>
                                                </div>
                                            </li>
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_thumb">
                                                    <a class="d_h_contents" href="http://hub.zum.com/ytn/28249" target="_self" data-order="3" data-templet="1" data-title="평균 나이 78.8세 할배들이&lt;br&gt;이토록 사랑스러울 줄이야" data-pos="item" data-cm="img" data-contents="28249" data-item-id="235141">
                                                        <div class="thumb">
                                                            <span class="mask"></span>
                                                            <img src="http://post3.zumst.com/legocms/2018/07/16/09/3fa1d452f649447092691eefc472d7f6.jpg" alt="평균 나이 78.8세 할배들이&lt;br&gt;이토록 사랑스러울 줄이야" data-cm="img">
                                                        </div>
                                                        <span class="bd" data-cm="img"></span>
                                                        <strong class="title" data-cm="tit">평균 나이 78.8세 할배들이<br>이토록 사랑스러울 줄이야</strong>
                                                    </a>
                                                    <span class="source">
YTN
</span>
                                                </div>
                                            </li>
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_thumb">
                                                    <a class="d_h_contents" href="http://hub.zum.com/hani/28157" target="_self" data-order="4" data-templet="1" data-title="개성공단 전시회 열었더니&lt;br&gt;&quot;빨갱이들이 만들었구나!&quot;" data-pos="item" data-cm="img" data-contents="28157" data-item-id="234901">
                                                        <div class="thumb">
                                                            <span class="mask"></span>
                                                            <img src="http://post3.zumst.com/legocms/2018/07/12/17/69ff957105dd42d4b72cd569ca991f05.jpg" alt="개성공단 전시회 열었더니&lt;br&gt;&quot;빨갱이들이 만들었구나!&quot;" data-cm="img">
                                                        </div>
                                                        <span class="bd" data-cm="img"></span>
                                                        <strong class="title" data-cm="tit">개성공단 전시회 열었더니<br>"빨갱이들이 만들었구나!"</strong>
                                                    </a>
                                                    <span class="source">
한겨레
</span>
                                                </div>
                                            </li>
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_text">
                                                    <a class="d_h_contents" href="http://hub.zum.com/gettyimageskorea/28076" target="_self" data-order="5" data-templet="1" data-title="돌아온 &#39;인크레더블 2&#39;에&lt;br&gt;숨겨진 뒷이야기" data-pos="item" data-cm="text" data-contents="28076" data-item-id="235177">
                                                        <strong class="title" data-cm="tit">
                                                            돌아온 '인크레더블 2'에<br>숨겨진 뒷이야기
                                                        </strong>
                                                        <span class="text" data-cm="text">
14년 만에 인크레더블의 후속편이 1편의 배우와 감독 그대로 7월 18일 돌아온다.
</span>
                                                    </a>
                                                    <span class="source">
<a class="d_h_contents" href="https://www.gettyimagesbank.com/" target="_blank" data-order="5" data-templet="1" data-title="돌아온 &#39;인크레더블 2&#39;에&lt;br&gt;숨겨진 뒷이야기" data-pos="item" data-cm="reference" data-contents="28076" data-item-id="235177">게티이미지코리아</a>
</span>
                                                </div>
                                            </li>
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_thumb">
                                                    <a class="d_h_contents" href="http://hub.zum.com/nocutnews/28507" target="_self" data-order="6" data-templet="1" data-title="&quot;&#39;함무라비&#39; 고아라 같은 판사?&lt;br&gt;단연코 있습니다&quot;" data-pos="item" data-cm="img" data-contents="28507" data-item-id="235558">
                                                        <div class="thumb">
                                                            <span class="mask"></span>
                                                            <img src="http://post3.zumst.com/legocms/2018/07/16/15/bdd70eda9eb14002abca0a6c4a5f8e7b.jpg" alt="&quot;&#39;함무라비&#39; 고아라 같은 판사?&lt;br&gt;단연코 있습니다&quot;" data-cm="img">
                                                        </div>
                                                        <span class="bd" data-cm="img"></span>
                                                        <span class="hub_label">
<span class="text">문유석 판사 인터뷰</span>
<span class="bg"></span>
</span>
                                                        <strong class="title" data-cm="tit">"'함무라비' 고아라 같은 판사?<br>단연코 있습니다"</strong>
                                                    </a>
                                                    <span class="source">
노컷뉴스
</span>
                                                </div>
                                            </li>
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_thumb">
                                                    <a class="d_h_contents" href="http://hub.zum.com/hani/28009" target="_self" data-order="7" data-templet="1" data-title="5톤 트럭 다섯 대로 책 옮겨&lt;br&gt;폐교에 도서관을 연 남자" data-pos="item" data-cm="img" data-contents="28009" data-item-id="235078">
                                                        <div class="thumb">
                                                            <span class="mask"></span>
                                                            <img src="http://post3.zumst.com/legocms/2018/07/13/11/c27f252c4e234815af47b1e528a67cd4.jpg" alt="5톤 트럭 다섯 대로 책 옮겨&lt;br&gt;폐교에 도서관을 연 남자" data-cm="img">
                                                        </div>
                                                        <span class="bd" data-cm="img"></span>
                                                        <strong class="title" data-cm="tit">5톤 트럭 다섯 대로 책 옮겨<br>폐교에 도서관을 연 남자</strong>
                                                    </a>
                                                    <span class="source">
한겨레
</span>
                                                </div>
                                            </li>
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_thumb">
                                                    <a class="d_h_contents" href="http://hub.zum.com/allyeozum/28187" target="_self" data-order="8" data-templet="1" data-title="17세기 인신매매단은&lt;br&gt;왜 아이들의 입을 찢었나" data-pos="item" data-cm="img" data-contents="28187" data-item-id="235143">
                                                        <div class="thumb">
                                                            <span class="mask"></span>
                                                            <img src="http://post3.zumst.com/legocms/2018/07/12/16/798d85039dab40a7955641db3c8f94d7.jpg" alt="17세기 인신매매단은&lt;br&gt;왜 아이들의 입을 찢었나" data-cm="img">
                                                        </div>
                                                        <span class="bd" data-cm="img"></span>
                                                        <strong class="title" data-cm="tit">17세기 인신매매단은<br>왜 아이들의 입을 찢었나</strong>
                                                    </a>
                                                    <span class="source">
<a class="d_h_contents" href="http://1boon.kakao.com/fanzeel" target="_blank" data-order="8" data-templet="1" data-title="17세기 인신매매단은&lt;br&gt;왜 아이들의 입을 찢었나" data-pos="item" data-cm="reference" data-contents="28187" data-item-id="235143">알려줌</a>
</span>
                                                </div>
                                            </li>
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_thumb">
                                                    <a class="d_h_contents" href="http://glasofk.egloos.com/6351528" target="_blank" data-order="9" data-templet="1" data-title="일본서 리메이크 되는 &#39;슈츠&#39;&lt;br&gt;한·미 비주얼 따라올까?" data-pos="item" data-cm="img" data-contents="" data-item-id="235178">
                                                        <div class="thumb">
                                                            <span class="mask"></span>
                                                            <img src="http://post3.zumst.com/legocms/2018/07/13/14/e80322e80e3d459da320028be5cc89cb.jpg" alt="일본서 리메이크 되는 &#39;슈츠&#39;&lt;br&gt;한·미 비주얼 따라올까?" data-cm="img">
                                                        </div>
                                                        <span class="bd" data-cm="img"></span>
                                                        <strong class="title" data-cm="tit">일본서 리메이크 되는 '슈츠'<br>한·미 비주얼 따라올까?</strong>
                                                    </a>
                                                    <span class="source">
이글루스 | 덕후
</span>
                                                </div>
                                            </li>
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_text">
                                                    <a class="d_h_contents" href="http://hub.zum.com/yes24/28188" target="_self" data-order="10" data-templet="1" data-title="아직도 아이돌 음악이&lt;br&gt;&#39;수준 낮은 유행&#39; 같나요?" data-pos="item" data-cm="text" data-contents="28188" data-item-id="234900">
                                                        <strong class="title" data-cm="tit">
                                                            아직도 아이돌 음악이<br>'수준 낮은 유행' 같나요?
                                                        </strong>
                                                        <span class="text" data-cm="text">
K-POP라고 부르는 아이돌 음악이 세계의 음악적 트렌드를 이끌고 있으며, 지리적…
</span>
                                                    </a>
                                                    <span class="source">
<a class="d_h_contents" href="http://ch.yes24.com" target="_blank" data-order="10" data-templet="1" data-title="아직도 아이돌 음악이&lt;br&gt;&#39;수준 낮은 유행&#39; 같나요?" data-pos="item" data-cm="reference" data-contents="28188" data-item-id="234900">예스24 채널예스</a>
</span>
                                                </div>
                                            </li>
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_thumb">
                                                    <a class="d_h_contents" href="http://hub.zum.com/notefolio/28078" target="_self" data-order="11" data-templet="1" data-title="&quot;출산은 경이롭고 고귀해&quot;&lt;BR&gt;하지만 그 이미지 뒷면에는…" data-pos="item" data-cm="img" data-contents="28078" data-item-id="235144">
                                                        <div class="thumb">
                                                            <span class="mask"></span>
                                                            <img src="http://post3.zumst.com/legocms/2018/07/12/16/1c1cb36567cb443bb87dc8d14b8a472a.jpg" alt="&quot;출산은 경이롭고 고귀해&quot;&lt;BR&gt;하지만 그 이미지 뒷면에는…" data-cm="img">
                                                        </div>
                                                        <span class="bd" data-cm="img"></span>
                                                        <strong class="title" data-cm="tit">"출산은 경이롭고 고귀해"<BR>하지만 그 이미지 뒷면에는…</strong>
                                                    </a>
                                                    <span class="source">
<a class="d_h_contents" href="http://magazine.notefolio.net" target="_blank" data-order="11" data-templet="1" data-title="&quot;출산은 경이롭고 고귀해&quot;&lt;BR&gt;하지만 그 이미지 뒷면에는…" data-pos="item" data-cm="reference" data-contents="28078" data-item-id="235144">노트폴리오매거진</a>
</span>
                                                </div>
                                            </li>
                                            <li class="item d_hub_slot " data-name="contents 1x">
                                                <div class="item item_thumb">
                                                    <a class="d_h_contents" href="http://hub.zum.com/chosun/27840" target="_self" data-order="12" data-templet="1" data-title="기안84 &quot;웹툰 수입 더 늘었다…&lt;br&gt;방송 수입은 10분의 1&quot;" data-pos="item" data-cm="img" data-contents="27840" data-item-id="235145">
                                                        <div class="thumb">
                                                            <span class="mask"></span>
                                                            <img src="http://post3.zumst.com/legocms/2018/07/11/14/3e32b1f598424a5b880fe22bfc7025e6.jpg" alt="기안84 &quot;웹툰 수입 더 늘었다…&lt;br&gt;방송 수입은 10분의 1&quot;" data-cm="img">
                                                        </div>
                                                        <span class="bd" data-cm="img"></span>
                                                        <strong class="title" data-cm="tit">기안84 "웹툰 수입 더 늘었다…<br>방송 수입은 10분의 1"</strong>
                                                    </a>
                                                    <span class="source">
조선일보
</span>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 쇼핑박스 home -->
                    <div class="shopping_content d_shopping_content_home">
                        <div class="shopping_box_wrap d_shopping_box_wrap" id="zum-shoppingBox">
                            <iframe id="iframe_shopping_new" name="iframe_shopping" src="http://shoplayer.zum.com/view/zum/shoppingboxmain/v3" frameborder="0" scrolling="no" width="300" height="790"></iframe>
                        </div>
                        <!-- //쇼핑 박스 -->
                        <div id="adx_zum_main_shoppingboxbottom2" class="box_bottom_banner">
                        </div>
                    </div>
                    <!-- 쇼핑박스 하단 배너 -->
                    <div id="adx_zum_main_rightbottom_300_100" class="box_bottom_banner">
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            (function(){
                if(zum && zum.layout){
                    zum.layout[0] = {
                        type:"type_3a",
                        useShopping:1,
                        useNews:1
                    };
                }
            })();
        </script>
    </div>
    <div id="footer"><div class="contents_footer"><div class="main_paging d_main_paging"><ul><li class="on" data-page="0"><a href="javascript:;" class="zum d_view_page" title="메인페이지" onclick="return zum.initialized;" data-pos="front_indiatorhome">메인페이지</a></li><li class="" data-page="1"><a href="javascript:;" class="d_view_page" title="1 페이지" onclick="return zum.initialized;" data-pos="front_indiator1">1</a></li><li class="page_add d_footer_tip"><a href="javascript:;" class="plus d_page_add" data-pos="front_indiatorNew">페이지 추가</a><span class="tip">페이지 추가<span class="tip_arrow"></span></span></li></ul></div><!-- 푸터 버튼 --><div class="page_buttons d_page_buttons" style="display:none;"><a href="javascript:;" class="btn_store d_btn_store">위젯스토어</a><a href="javascript:;" data-id="top" class="btn_setting d_btn_setting">설정</a><ul class="edit_line"><li><!-- 버튼 비활성 시 li에 disable 클래스 추가 --><a href="javascript:;" class="btn_line_add d_btn_line_add" data-pos="zumAppAddLine">위젯 줄 추가</a><span class="tip">줄 추가<span class="tip_arrow"></span></span></li><li><a href="javascript:;" class="btn_line_remove d_btn_line_remove" data-pos="zumAppDelLine">위젯 줄 제거</a><span class="tip">줄 삭제<span class="tip_arrow"></span></span></li></ul><span class="delete_page"><a href="javascript:;" class="btn_delete d_btn_delete">페이지 삭제</a><span class="tip">페이지 삭제<span class="tip_arrow"></span></span></span></div></div><div class="notice d_notice"><div><h3><a href="http://www.zuminternet.com/notice" target="_blank" data-pos="front_notice">공지사항</a></h3><a href="http://www.zuminternet.com/detail?id=211" target="_blank" class="txt" data-pos="front_notice">&#x5b;&#xacf5;&#xc9c0;&#x5d; &#xac00;&#xc0c1;&#xd654;&#xd3d0; &#xc815;&#xbcf4;&#xb97c; &#xd55c; &#xacf3;&#xc5d0;&#x21; &#xcf54;&#xc778;&#xc90c; &#xc624;&#xd508; &#xc548;&#xb0b4;</a></div></div><div class="link_list d_link_list"><ul><li><a href="http://www.zuminternet.com/service_zum" target="_blank" data-pos="front_info">서비스 소개</a></li><li class="d_footer_mainpage_only" ><a href="http://biz.zum.com">광고안내</a></li><li><a href="http://policy.zum.com/terms/" data-pos="front_policyterms">이용약관</a></li><li><a href="http://policy.zum.com/info" data-pos="front_policyinfo"><strong>개인정보처리방침</strong></a></li><li><a href="http://help.zum.com/feedback?service=partner" data-pos="front_partner">제휴</a></li><li><a href="https://zuminternet.recruiter.co.kr" target="_blank" data-pos="front_rec">채용</a></li><li><a href="http://help.zum.com/" data-pos="front_help">고객센터</a></li><li><a href="http://dev.zum.com/" data-pos="front_dev">개발자센터</a></li><li style="display:none" id="smartzumLink"><a href="about:zum" title="스마트줌" data-pos="front_smartzum">스마트줌</a></li><li><a href="http://www.zuminternet.com/" target="_blank" data-pos="front_zumci"><strong>&copy;ZUM internet</strong></a></li></ul></div> </div><div id="layer" class="layer" style="display:none"><span id="layer_mask" class="layer_mask" style="display:none"></span><span id="layer_mask_under" class="layer_mask_under" style="display:none"></span><div class="layer_bg_change_complete" id="layer_bg_change_complete" style="display:none"></div><div class="layer_set_start" id="layer_homeconfig_explain" style="display:none"></div><div class="layer_widget_migration" id="d_layer_widget_migration" style="display:none"></div><div class="layer_state_alert" id="layer_state_alert" style="display:none"><div class="state"></div><a href="javascript:;" onclick="return false;">확인</a></div><div id="layer_favoritesite" class="layer" style="display:none;"><span class="layer_mask" style="display:block"></span></div></div><div id="layer_api" class="layer" style="display:none;"><div class="box_layer layer_api"><a href="javascript:;" class="close"><span class="blind">닫기</span></a><div class="bg_alpha"></div><p></p></div></div></div><div id="brandingStation"></div><script type="text/javascript" src="//estat.zum.com/scripts/at.js"></script><script type="text/javascript"src="//adxv.zum.com/view/targets?slots=zum_main_bigbanner_655,zum_main_br_widget_300&nc=41113650"></script><script type="text/javascript" src="http://lego.zumst.com/resources/current/build/js/lib/lib.min-4c85c5834c6e5754e91a83bbb4f6b7d6.js"></script><script type="text/javascript" src="http://lego.zumst.com/resources/current/build/js/start-c831245f83e2f2effe64868b6296c22d.js"></script><script type="text/javascript" src="//adxv.zum.com/view?slot=zum_main_leftwing"></script><script type="text/javascript" src="//adxv.zum.com/view?slot=zum_main_rightbottom_300_100"></script><style type="text/css">body {-ms-touch-action: pan-y pinch-zoom;}</style>
</body>
</html>

<#list datas as data>
    ${data}
</#list>