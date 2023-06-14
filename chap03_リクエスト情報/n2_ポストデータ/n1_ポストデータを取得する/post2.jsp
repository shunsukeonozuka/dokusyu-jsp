<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>ポストデータ</title>
</head>
<body>
  <%
    // 選択ボックス"animal"の値を取得
    String animal = request.getParameter("animal");
    // 選択ボックスの値に応じてメッセージを変化
    switch (animal) {
      case "ham":
        out.println("つぶらな瞳がとっても可愛いですよね。");
        break;
      case "dog":
        out.println("古来からの人間の友です。");
        break;
      default:
        out.println("？？？");
        break;
    }
  %>
</body>
</html>