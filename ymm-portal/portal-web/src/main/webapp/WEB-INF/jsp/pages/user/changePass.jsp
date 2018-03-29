<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>修改密码</title>
    <script src="${pageContext.request.contextPath}/userStatic/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/userStatic/css/regester/regester.css"/>
</head>
<body>
<header>
    <a href="#" class="logo">
        <img style="width: 100%;height: 100%" src="${pageContext.request.contextPath}/userStatic/images/regester/ymm.png">
    </a>
    <div class="desc">密码修改</div>
</header>
<section>
    <form action="">
        <div class="register-box">
            <label  class="username_label">原 密 码
                <input id="oldPass" maxlength="20" type="text" placeholder="您的原始密码"/>
            </label>
            <div class="tips">

            </div>
        </div>
        <div class="register-box">
            <label class="other_label">设 置 新 密 码
                <input id="password" maxlength="20" type="password" placeholder="建议至少使用两种字符组合"/>
            </label>
            <div class="tips">

            </div>
        </div>
        <div class="register-box">
            <label  class="other_label">确 认 密 码
                <input maxlength="20" type="password" placeholder="请再次输入密码"/>
            </label>
            <div class="tips">

            </div>
        </div>
        <div class="register-box">
            <label  class="other_label">验 证 码
                <input maxlength="20" type="text" placeholder="请输入验证码"/>
            </label>
            <span id="code"></span>
            <div class="tips">

            </div>
        </div>
        <div class="submit_btn">
            <button type="submit" id="submit_btn">确 认 修 改</button>
        </div>
    </form>
</section>

<script src="${pageContext.request.contextPath}/userStatic/js/changePass.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>



