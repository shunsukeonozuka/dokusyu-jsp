<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>ヘッダー情報</title>
</head>
<body>
  <table class="table">
    <%
      // リクエストヘッダー名の集合を取得
      Enumeration<String> headers  = request.getHeaderNames();
      // ヘッダー名を順番に取得、対応するヘッダー値とともに表示
      while (headers.hasMoreElements()) {
        String name = headers.nextElement();
    %>
    <tr>
      <th><%=name%></th>
      <td><%=request.getHeader(name)%></td>
    </tr>
    <% } %>
  </table>
</body>
</html>