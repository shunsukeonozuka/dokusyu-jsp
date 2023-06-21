<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*,javax.naming.*,javax.sql.*"%>
<%
  // データベースへの接続を確立
  Context context = new InitialContext();
  DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/selfjsp");
  try(Connection db = ds.getConnection()) {
    // トランザクション処理を開始
    db.setAutoCommit(false);
    try(
      PreparedStatement ps1 = db.prepareStatement("INSERT INTO book(isbn,title,price,publish,published) VALUES('978-4-7981-5382-7','独習C#新版',3600,'翔泳社','2018-10-15')");
      // この例では、以下で主キー制約違反が発生するはず
      PreparedStatement ps2 = db.prepareStatement("INSERT INTO book(isbn,title,price,publish,published) VALUES('978-4-7981-5382-7','独習C#新版',3600,'翔泳社','2018-10-15')")
    ) {
      ps1.executeUpdate();
      ps2.executeUpdate();
      // すべての処理が成功したら、トランザクションをコミット
      db.commit();
    } catch (SQLException e) {
      db.rollback();
      out.println("エラーメッセージ："+ e.getMessage());
    }
  }
%>