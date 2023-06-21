<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*,javax.naming.*,javax.sql.*"%>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>データベースへの接続</title>
</head>
<body>
  <%
    Context context = new InitialContext();
    DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/selfjsp");
    try(Connection db = ds.getConnection()) {
      // データベースの操作
    }
  %>
  データベースへの接続に成功しました。
</body>
</html>