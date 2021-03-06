<#include "/include/macros.ftl">
<@header>
    <style>
        .prod_title {
            margin: 5px 0;
        }
    </style>
</@header>
<div class="clearfix"></div>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_content">
                <div class="">
                    <div class="row">
                        <form id="removerForm" action="/remover/run" target="spiderFrame" method="post" class="form-horizontal form-label-left" novalidate>
                            <#-- 左侧 -->
                            <div class="col-md-6">
                                <h3 class="prod_title"><i class="fa fa-cogs"></i> 基本配置</h3>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="platform">选择博文平台 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <select name="platform" id="platform" class="form-control" required="required">
                                            <option value="">请选择</option>
                                            <option value="imooc">慕课网</option>
                                            <option value="csdn">CSDN</option>
                                            <option value="iteye">ITeye</option>
                                            <option value="">待续...</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="platform">文章分类 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <select name="typeId" id="typeId" class="form-control" required="required"></select>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="uid">用户ID <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" name="uid" id="uid" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3"></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <i class="fa fa-exclamation-circle"></i> 各平台“用户ID”获取方式：
                                        <a href="javascript:;" data-toggle="modal" data-target="#helpModal" data-img="/assets/images/spider/uid/imooc.png" data-title="慕课网“用户ID”获取方式">慕课网</a> |
                                        <a href="javascript:;" data-toggle="modal" data-target="#helpModal" data-img="/assets/images/spider/uid/csdn.png" data-title="CSDN“用户ID”获取方式">CSDN</a> |
                                        <a href="javascript:;" data-toggle="modal" data-target="#helpModal" data-img="/assets/images/spider/uid/iteye.png" data-title="ITeye“用户ID”获取方式">ITeye</a>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="totalPage">文章总页数 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" name="totalPage" id="totalPage" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="domain">网站根域名 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" name="domain" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="cookie">Cookie </label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <textarea name="cookie" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3"></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <i class="fa fa-exclamation-circle"></i> 只在需要登陆时才需要设置。Cookie获取方式： <a href="javascript:HandlerInterceptor;" data-toggle="modal" data-target="#helpModal" data-img="/assets/images/spider/cookie/cookie.png" data-title="“Cookie”获取方式（通用）">以CSDN为例</a>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="header">Header <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <textarea name="header" class="form-control" required="required"></textarea>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3"></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <i class="fa fa-exclamation-circle"></i> Header主要是为了防止某些网站验证referer等信息防爬虫
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="entryUrls">程序入口页面 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <textarea name="entryUrls" class="form-control" required="required"></textarea>
                                    </div>
                                </div>
                            </div>
                            <#-- 右侧 -->
                            <div class="col-md-6">
                                <h3 class="prod_title"><i class="fa fa-th"></i> 爬虫Xpath抓取规则</h3>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="titleRegex">标题 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" name="titleRegex" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="authorRegex">作者 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" name="authorRegex" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="releaseDateRegex">发布日期 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" name="releaseDateRegex" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="contentRegex">内容 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" name="contentRegex" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="tagRegex">标签 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" name="tagRegex" class="form-control" required="required">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="targetLinksRegex">待抓取的url <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" name="targetLinksRegex" class="form-control" required="required">
                                    </div>
                                </div>
                                <h3 class="prod_title"><i class="fa fa-th"></i> 爬虫其他配置项</h3>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="charset">网站编码 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" name="charset" class="form-control" value="utf8" readonly required="required">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="sleepTime">延迟 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" name="sleepTime" class="form-control" value="1000" readonly required="required">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3"></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        延迟和爬取速度以及被封的概率成正比！请慎用
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="retryTimes">重试次数 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" name="retryTimes" class="form-control" value="2" readonly required="required">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-3" for="threadCount">线程个数 <span class="required">*</span></label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" name="threadCount" class="form-control" value="1" readonly required="required">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <button type="button" class="btn btn-success" data-toggle="modal" data-target="#declareModal"><i class="fa fa-truck"> GO！</i></button>
                                <button type="reset" class="btn btn-default" id="resetBtn"><i class="fa fa-refresh"> 清除</i></button>
                                <button type="button" class="btn btn-info" id="showResultModal"><i class="fa fa-eye"> 显示日志</i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="helpModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="helpModalTitle"></h4>
            </div>
            <div class="modal-body">
                <a href="" class="showImage" title="" rel="external nofollow">
                    <img src="" alt="" id="helpModalImg" class="img-responsive img-rounded">
                </a>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="declareModal" tabindex="-1" role="dialog" aria-labelledby="declareModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="declareModalTitle">声明</h4>
            </div>
            <div class="modal-body">
                <ul class="list-unstyled">
                    <li>1.本工具开发初衷只是用来迁移 <strong>自己的文章</strong> 所用，因此不可用该工具 <strong>恶意窃取</strong> 他人劳动成果！</li>
                    <li>2.因不听劝阻，使用该工具恶意窃取他们劳动成果而造成的一切不良后果，本人表示：坚决不背锅！</li>
                    <li>3.如果该工具不好用，你们绝对不能打我！</li>
                    <li>4.有问题、建议，请 <a href="https://gitee.com/yadong.zhang/DBlog/issues" target="_blank">提Issue</a>！</li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" id="submitBtn"><i class="fa fa-truck"> 知道了！</i></button>
                <a href="javascript:;" data-dismiss="modal"><i class="fa fa-close"> 算了吧</i></a>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="resultModal" tabindex="-1" role="dialog" aria-labelledby="resultModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="resultModalLabel">程序正在执行中...</h4>
            </div>
            <div class="modal-body">
                <div class="pageFormContent" id="pageFormContent" style="max-height: 300px;height: 300px;overflow-y: auto;">
                    <code id="message" style="display: block;"></code>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-close"> 关闭</i></button>
            </div>
        </div>
    </div>
</div>
<iframe src="" id="spiderFrame" name="spiderFrame" style="display: none"></iframe>
<@footer>
    <script>
        var spiderConfig = {
            imooc: {
                domain: "www.imooc.com",
                titleRegex: "//span[@class=js-title]/html()",
                authorRegex: "//div[@class=name_con]/p[@class=name]/a[@class=nick]/html()",
                releaseDateRegex: "//div[@class='dc-profile']/div[@class='l']/span[@class='spacer']/text()",
                contentRegex: "//div[@class=detail-content]/html()",
                targetLinksRegex: "/article/[0-9]{1,10}",
                tagRegex: "//div[@class=cat-box]/div[@class=cat-wrap]/a[@class=cat]/html()",
                header: [
                    "Host=www.imooc.com",
                    "Referer=https://www.imooc.com"
                ],
                entryUrls: 'https://www.imooc.com/u/{uid}/articles?page={curPage}'
            },
            csdn: {
                domain: "blog.csdn.net",
                titleRegex: "//h1[@class=title-article]/html()",
                authorRegex: "//div[@class=profile-intro]/div[@class=user-info]/p[@class=name]/a[@class=text-truncate]/html()",
                releaseDateRegex: "//div[@class='article-bar-top']/span[@class='time']/text()",
                contentRegex: "//div[@class=article_content]/html()",
                targetLinksRegex: ".*blog\\.csdn\\.net/{uid}/article/details/[0-9a-zA-Z]{1,15}",
                tagRegex: "//span[@class=artic-tag-box]/a[@class=tag-link]/html()",
                header: [
                    "Host=blog.csdn.net",
                    "Referer=https://blog.csdn.net/{uid}/article/list/1"
                ],
                entryUrls: 'https://blog.csdn.net/{uid}/article/list/{curPage}'
            },
            iteye: {
                domain: "{uid}.iteye.com",
                titleRegex: "//div[@class=blog_title]/h3/a/html()",
                authorRegex: "//div[@id=blog_owner_name]/html()",
                releaseDateRegex: "//div[@class=blog_bottom]/ul/li/html()",
                contentRegex: "//div[@class=blog_content]/html()",
                targetLinksRegex: ".*{uid}\\.iteye\\.com/blog/[0-9]+",
                tagRegex: "//div[@class=news_tag]/a/html()",
                header: [
                    "Host={uid}.iteye.com",
                    "Referer=http://{uid}.iteye.com/"
                ],
                entryUrls: 'http://{uid}.iteye.com/?page={curPage}'
            }
        };
        // 博文平台
        var $platform = $("#platform");
        // 各平台用户id
        var $uid = $("#uid");
        // 文章总页数
        var $totalPage = $("#totalPage");
        var reg = new RegExp('{\\w+}'), br = "\r\n";

        $("#platform, #uid, #totalPage").change(function () {
            autoCompleForm();
        });
        function  autoCompleForm() {
            var platform = $platform.val(),
                    uid = $uid.val(),
                    totalPage = $totalPage.val(),
                    curConfig = spiderConfig[platform];
            $("#removerForm").find("input,textarea").each(function () {
                var $this = $(this);
                var thisName = $this.attr("name");
                var realText;
                $this.val((realText = parseText(curConfig, thisName, uid, totalPage)) ? realText : $this.val());
            });
        }
        function parseText(curConfig, thisName, uid, totalPage){
            var text = curConfig[thisName];
            if (typeof(text) === "undefined") {
                return text;
            }
            console.log("exec >> " + reg.exec(text));
            if(thisName === "header") {
                var header = "";
                for(var i in text) {
                    header += text[i].replaceAll("{uid}", uid) + br;
                }
                text = header.substr(0, header.length - br.length);
            } else if(thisName === "entryUrls") {
                var entryUrl = "";
                for(var j = 1; j <= totalPage; j ++) {
                    entryUrl += text.replaceAll("{uid}", uid).replaceAll("{curPage}", j) + br;
                }
                text = entryUrl.substr(0, entryUrl.length - br.length);
            } else if(reg.exec(text)) {
                text = text.replaceAll("{uid}", uid);
            }
            return text;
        }

        $("#submitBtn").click(function () {
            var $form = $("form#removerForm");
            if (validator.checkAll($form)) {
                $(this).button('loading');
                $("#resetBtn").button('loading');
                $("#resultModal").modal('show');
                $form.submit();
                $("#message").html("<p> 程序正在初始化...</p>");
            }
        });

        $("#showResultModal").click(function () {
            $("#resultModal").modal('show');
        });

        function printMessage(message){
            if(message == 'shutdown') {
                $("#submitBtn").button('reset');
                $("#resetBtn").button('reset');
                return;
            }
            $("#message").append("<p>" + message + "</p>");
            var $dom = document.getElementById("pageFormContent");
            $dom.scrollTop = $dom.scrollHeight;
        }

        $('#helpModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget);
            var img = button.data('img');
            var title = button.data('title');
            var modal = $(this);
            modal.find('#helpModalTitle').text(title);
            var $img = modal.find('#helpModalImg');
            $img.attr("src", img).attr("alt", title);
            $img.parent().attr("href", img).attr("title", title);
        })

        $.ajax({
            type: "post",
            url: "/type/listAll",
            success: function (json) {
                $.alert.ajaxSuccess(json);
                var data = '';
                if(data = json.data){
                    var tpl = '<option value="">选择分类</option>{{#data}}<option value="{{id}}">{{name}}</option>{{#nodes}}<option value="{{id}}">  -- {{name}}</option>{{/nodes}}{{/data}}';
                    var html = Mustache.render(tpl, json);
                    $("select#typeId").html(html);
                }
            },
            error: $.alert.ajaxError
        });
    </script>
</@footer>