<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>ポストデータ</title>
</head>
<body>
  <%
    // テキストボックスの値から挨拶メッセージを生成／出力
    out.println("こんにちは、"+request.getParameter("nam")+"さん！");
  %>
</body>
</html>