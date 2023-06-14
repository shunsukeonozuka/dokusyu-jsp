<%@ page contentType="text/html;charset=UTF-8" %>
<%
  // セッション情報emailを取得
  String email = (String)session.getAttribute("email");
%>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>セッション情報</title>
</head>
<body>
  <form method="post" action="session2.jsp">
  <%-- 変数emailがnullである場合には空文字列を出力 --%>
  <label for="email">メールアドレス：</label>
  <input id="email" type="text" name="email" size="40" value="<%=(email == null) ? "" : email%>">
  <input type="submit" value="送信">
</body>
</html>