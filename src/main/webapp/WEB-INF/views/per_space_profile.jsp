<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>狴犴居后台管理系统-个人信息</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="${pageContext.request.contextPath }/assets/img/favicon.ico">
    <link href="${pageContext.request.contextPath }/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/assets/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content">
    <div class="row animated fadeInRight">
        <div class="col-sm-4">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>个人资料</h5>
                </div>
                <div>
                    <div class="ibox-content no-padding border-left-right">
                        <img alt="image" class="img-responsive" src="${pageContext.request.contextPath }/assets/img/monkey_king.jpg">
                    </div>
                    <div class="ibox-content profile-content">
                        <h4><strong>Monkey-King</strong></h4>
                        <p><i class="fa fa-map-marker"></i> 花果山水帘洞</p>
                        <h5>
                            关于我
                        </h5>
                        <p>
                            公元前578年六月初一，出生于东胜神洲傲来国花果山。乃一仙石吸收天地之气孕育而生，之后度过光景，因为闯入水帘洞，被花果山诸猴拜为“美猴王”。之后为了寻求长生不老的方法，赴灵台方寸山、斜月三星洞拜菩提祖师为师，学会了地煞七十二变和筋斗云用时二百年。悟空回山后打败混世魔王，从傲来国内得到大量兵器分发诸猴，但是没有一样兵器顺手。为了寻一件称手的兵器，大闹东海龙宫，终寻得如意金箍棒（定海神针铁），龙王怀恨在心，上报天庭，要求缉拿孙悟空。
                            悟空在第342岁，因寿命已到而大闹地府，销毁生死簿，返回人间。阎王再复上报天庭，玉皇大帝欲捉拿悟空，太白金星建议招安。孙悟空被召上天宫，被骗封为弼马温，15日后知道原来这官只不过是个马夫，大怒，打出南天门。回花果山时，凡间已经过了15年。独角鬼王前来投奔，建议悟空自封“齐天大圣”，孙悟空在此时广交朋友，结拜七兄弟。
                            玉皇大帝知道孙悟空反下天宫，大怒，命李天王派兵镇压，孙悟空打败巨灵神，哪吒三太子，天宫被迫封其为齐天大圣。
                        </p>
                        <div class="row m-t-lg">
                            <div class="col-sm-4">
                                <span class="bar">5,3,9,6,5,9,7,3,5,2</span>
                                <h5><strong>81</strong> 文章</h5>
                            </div>
                            <div class="col-sm-4">
                                <span class="line">5,3,9,6,5,9,7,3,5,2</span>
                                <h5><strong>4</strong> 关注</h5>
                            </div>
                            <div class="col-sm-4">
                                <span class="bar">5,3,2,-1,-3,-2,2,3,5,2</span>
                                <h5><strong>14亿</strong> 关注者</h5>
                            </div>
                        </div>
                        <div class="user-button">
                            <div class="row">
                                <div class="col-sm-6">
                                    <button type="button" class="btn btn-primary btn-sm btn-block"><i
                                            class="fa fa-envelope"></i> 发送消息
                                    </button>
                                </div>
                                <div class="col-sm-6">
                                    <button type="button" class="btn btn-default btn-sm btn-block"><i
                                            class="fa fa-coffee"></i> 赞助
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-8">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>最新动态</h5>
                </div>
                <div class="ibox-content">

                    <div>
                        <div class="feed-activity-list">

                            <div class="feed-element">
                                <a href="per_space_profile.jsp" class="pull-left">
                                    <img alt="image" class="img-circle" src="${pageContext.request.contextPath }/assets/img/tang.png">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right text-navy">1天前</small>
                                    <strong>唐三藏</strong> 关注了 <strong>你</strong>.
                                    <br>
                                    <small class="text-muted">54分钟前 来自 bb机</small>
                                    <div class="actions">
                                        <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> 赞 </a>
                                        <a class="btn btn-xs btn-danger"><i class="fa fa-heart"></i> 收藏</a>
                                    </div>
                                </div>
                            </div>

                            <div class="feed-element">
                                <a href="per_space_profile.jsp" class="pull-left">
                                    <img alt="image" class="img-circle" src="${pageContext.request.contextPath }/assets/img/sha.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right">5分钟前</small>
                                    <strong>沙僧</strong> 发布了一篇文章
                                    <br>
                                    <small class="text-muted">今天 10:20 来自 iPhone 11 Plus</small>

                                </div>
                            </div>

                            <div class="feed-element">
                                <a href="per_space_profile.jsp" class="pull-left">
                                    <img alt="image" class="img-circle" src="${pageContext.request.contextPath }/assets/img/pig.png">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right">2小时前</small>
                                    <strong>猪八戒</strong> 抽奖中了20万
                                    <br>
                                    <small class="text-muted">今天 09:27 来自 Koryolink iPhone</small>
                                    <div class="well">
                                        抽奖，人民币2000元，从转发这个微博的粉丝中抽取一人。11月16日平台开奖。随手一转，万一中了呢？
                                    </div>
                                    <div class="pull-right">
                                        <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> 赞 </a>
                                        <a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> 收藏</a>
                                        <a class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> 评论</a>
                                    </div>
                                </div>
                            </div>
                            <div class="feed-element">
                                <a href="per_space_profile.jsp" class="pull-left">
                                    <img alt="image" class="img-circle" src="${pageContext.request.contextPath }/assets/img/bbeb.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right">2天前</small>
                                    <strong>奔波儿灞</strong> 上传了1张图片
                                    <br>
                                    <small class="text-muted">11月7日 11:56 来自 微博 weibo.com</small>
                                    <div class="photos">
                                        <a target="_blank" href="#">
                                            <img alt="image" class="feed-photo" src="${pageContext.request.contextPath }/assets/img/longgon1.jpg">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="feed-element">
                                <a href="per_space_profile.jsp" class="pull-left">
                                    <img alt="image" class="img-circle" src="${pageContext.request.contextPath }/assets/img/bberb.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right text-navy">5小时前</small>
                                    <strong>霸波儿奔</strong> 关注了 <strong>奔波儿灞</strong>.
                                    <br>
                                    <small class="text-muted">今天 10:39 来自 iPhone客户端</small>
                                    <div class="actions">
                                        <a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> 赞 </a>
                                        <a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> 收藏</a>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <button class="btn btn-primary btn-block m"><i class="fa fa-arrow-down"></i> 显示更多</button>

                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

<!-- 全局js -->
<script src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/bootstrap.min.js"></script>


<!-- 自定义js -->
<script src="${pageContext.request.contextPath }/assets/js/content.js"></script>


<!-- Peity -->
<script src="${pageContext.request.contextPath }/assets/js/plugins/peity/jquery.peity.min.js"></script>

<!-- Peity -->
<script src="${pageContext.request.contextPath }/assets/js/demo/peity-demo.js"></script>


</body>

</html>
