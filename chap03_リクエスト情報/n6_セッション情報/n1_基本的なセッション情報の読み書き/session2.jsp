<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>セッション情報</title>
</head>
<body>
  <%
    // セッション情報emailにテキストボックスの値をセット
    session.setAttribute("email", request.getParameter("email"));
  %>
  セッションが保存されました。
</body>
</html>