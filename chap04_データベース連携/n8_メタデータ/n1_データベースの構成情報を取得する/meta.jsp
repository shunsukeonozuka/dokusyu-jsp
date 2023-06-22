<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*,javax.naming.*,javax.sql.*"%>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>メタデータ</title>
</head>
<body>
  <dl>
<%
      //データベースへの接続を確立
      Context ctx = new InitialContext();
      DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/selfjsp");
      try(Connection db = ds.getConnection()) {
        // selfjspデータベースに含まれるテーブル情報を取得
        DatabaseMetaData meta = db.getMetaData();
        ResultSet rs1 = meta.getTables("selfjsp","%","%",null);
        // 取得した結果セットからテーブル名を取得＆リスト表示
        while(rs1.next()) {
          String table = rs1.getString("TABLE_NAME");
%>
          <dt><%=table %>テーブル</dt>
          <talbe class="table">
          <thead>
            <tr>
              <th>フィールド名</th><th>データ型</th><th>桁数</th>
            </tr>
          </thead>
          <tbody>
<%
            ResultSet rs2 = meta.getColumns("selfjsp",null,table,"%");
            while(rs2.next()) {
%>
              <tr>
                <td><%= rs2.getString("COLUMN_NAME") %></td>
                <td><%= rs2.getString("TYPE_NAME") %></td>
                <td class="text-end"><%= rs2.getString("COLUMN_SIZE") %></td>
              </tr>
<%
            }
%>
          </tbody>
          </table>
<%
        }
      }
%>
  </dl>
</body>
</html>