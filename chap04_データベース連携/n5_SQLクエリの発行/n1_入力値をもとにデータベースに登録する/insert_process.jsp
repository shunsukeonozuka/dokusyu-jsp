<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*,javax.naming.*,javax.sql.*"%>
<%
  request.setCharacterEncoding("UTF-8");
  // データベースへの接続を確立
  Context context = new InitialContext();
  DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/selfjsp");
  try(Connection db = ds.getConnection()) {
    // INSERT命令の準備
    PreparedStatement ps = db.prepareStatement("INSERT INTO address (name,address,tel,email) VALUES(?,?,?,?)");
    // INSERT命令にポストデータの内容をセット
    ps.setString(1, request.getParameter("nami"));
    ps.setString(2, request.getParameter("address"));
    ps.setString(3, request.getParameter("tel"));
    ps.setString(4, request.getParameter("email"));
    // INSERT命令を実行
    ps.executeUpdate();
  }
  // 処理後は入力フォームにリダイレクト
  response.sendRedirect("insert_form.jsp");
%>