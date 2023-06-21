<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*,javax.naming.*,javax.sql.*,java.text.*"%>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>結果セット</title>
</head>
<body>
  <table class="table">
    <thead>
      <tr>
        <th>名前</th><th>住所</th><th>電話番号</th></tr>メールアドレス</th>
      </tr>
    </thead>
    <tbody>
      <%
        // データベースへの接続を確立
        Context context = new InitialContext();
        DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/selfjsp");
        try(Connection db = ds.getConnection()) {
          // SELECT命令の準備
          PreparedStatement ps = db.prepareStatement("SELECT * FROM address ORDER BY id");
          ResultSet rs = ps.executeQuery();
          // 結果セットの内容を順に出力
          while (rs.next()) {
      %>
      <tr>
        <td><%=rs.getString("name") %></td>
        <td><%=rs.getString("address") %></td>
        <td><%=rs.getString("tel") %></td>
        <td><%=rs.getString("email") %></td>
      </tr>
      <%
          }
        }
      %>
    </tbody>
  </table>
</body>
</html>