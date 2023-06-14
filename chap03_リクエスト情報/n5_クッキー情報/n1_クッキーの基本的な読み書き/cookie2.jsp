<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>クッキー情報</title>
</head>
<body>
  <%
    // クッキーオブジェクトを生成
    Cookie cook = new Cookie("email", request.getParameter("email"));
    cook.setMaxAge(60 * 60 * 24 *180); // 有効期限
    // クッキーを発行
    response.addCookie(cook);
  %>
  クッキーが保存されました。
</body>
</html>