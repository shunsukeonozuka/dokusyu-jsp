<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>応答ヘッダー</title>
</head>
<body>
  <%
    response.setIntHeader("Refresh",5);
    out.println("現在時刻：" + new Date());
  %>
</body>
</html>