<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>ポストデータ</title>
</head>
<body>
  選択されたのは、
  <%
    // リクエストデータの文字コードを宣言
    request.setCharacterEncoding("UTF-8");
    // チェックボックスの値を取得
    String result = String.join("&nbsp;", request.getParameterValues("arch"));
    out.println(result);
  %>
  です。
</body>
</html>