<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>ポストデータ</title>
</head>
<body>
  <%-- action属性にはポストデータの送信先を指定 --%>
  <form method="post" action="post2.jsp">
    <label for="animal">あなたの好きな生き物は？</label>
    <select name="animal" id="animal">
      <option value="ham">ハムスター</option>
      <option value="dog">イヌ</option>
      <option value="goki">ゴキブリ</option>
    </select>
    <input type="submit" value="送信">
  </form>
</body>
</html>