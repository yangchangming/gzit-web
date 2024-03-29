<#include "macro-head.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${registerLabel} - ${symphonyLabel}">
        <meta name="description" content="${registerLabel} ${symphonyLabel}"/>
        </@head>
        <link type="text/css" rel="stylesheet" href="${staticServePath}/css/index${miniPostfix}.css?${staticResourceVersion}" />
    </head>
    <body>
        <#include "header.ftl">
        <div class="main">
            <div class="wrapper register">
                <div class="form">
                    <table cellpadding="0" cellspacing="0">
                        <tbody>
                            <tr>
                                <td colspan="2" align="center">
                                    <div id="qr_code_id">
<#--                                        <img src="/images/changmingtalk.png" style="height: 200px; width: 200px;" />-->
                                    </div>
                                </td>
                            </tr>

<#--                            <tr>-->
<#--                                <td width="70">-->
<#--                                    <label for="userName">${userNameLabel}</label>-->
<#--                                </td>-->
<#--                                <td width="165">-->
<#--                                    <input autofocus="autofocus" type="text" id="userName" placeholder="${userNamePlaceholderLabel}" />-->
<#--                                </td>-->
<#--                            </tr>-->
<#--                            <tr>-->
<#--                                <td>-->
<#--                                    <label for="userEmail">${emailLabel}</label>-->
<#--                                </td>-->
<#--                                <td>-->
<#--                                    <input type="text" id="userEmail" placeholder="${emailPlaceholderLabel}" />-->
<#--                                </td>-->
<#--                            </tr>-->
<#--                            <tr <#if "2" != miscAllowRegister>class="fn-none"</#if>>-->
<#--                                <td>-->
<#--                                    <label for="invitecode">${invitecodeLabel}</label>-->
<#--                                </td>-->
<#--                                <td>-->
<#--                                    <input type="text" id="invitecode" placeholder="${invitecodePlaceholderLabel}"/>-->
<#--                                </td>-->
<#--                            </tr>-->
<#--                            <tr>-->
<#--                                <td>-->
<#--                                    <label for="securityCode">${captchaLabel}</label>-->
<#--                                </td>-->
<#--                                <td>-->
<#--                                    <input type="text" id="securityCode" />-->
<#--                                    <img id="captcha" class="fn-pointer" src="/captcha" onclick="this.src = '/captcha?' + (new Date()).getTime()" />-->
<#--                                </td>-->
<#--                            </tr>-->
<#--                            <tr>-->
<#--                                <td colspan="2" align="right"><br/>-->
<#--                                    <div id="registerTip" class="tip"></div><br/>-->
<#--                                    <button class="green" onclick="Register.register()">${registerLabel}</button>-->
<#--                                    <input id="referral" type="hidden" value="${referral}">-->
<#--                                </td>-->
<#--                            </tr>-->
                        </tbody>
                    </table>
                </div>
                <div class="intro fn-flex-1 content-reset">
                    ${introLabel}
                </div>
            </div>
        </div>
        <#include "footer.ftl">
        <script type="text/javascript" src="${staticServePath}/js/register${miniPostfix}.js?${staticResourceVersion}"></script>
        <script type="text/javascript" src="http://res.wx.qq.com/connect/zh_CN/htmledition/js/wxLogin.js"></script>
        <script>
            Register.init();
            Label.userNameErrorLabel = "${userNameErrorLabel}";
            Label.invalidEmailLabel = "${invalidEmailLabel}";
            Label.confirmPwdErrorLabel = "${confirmPwdErrorLabel}";
            Label.captchaErrorLabel = "${captchaErrorLabel}";

            var obj = new WxLogin({
                self_redirect:false,
                id:"qr_code_id",
                appid: "wxaf4bef7a754a2e63",
                scope: "snsapi_login",
                redirect_uri: "http://www.gzit.info/callback4WX",
                state: "",
                style: "",
                href: ""
            });

        </script>
    </body>
</html>
