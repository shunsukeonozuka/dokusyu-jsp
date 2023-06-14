<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>リクエストパス</title>
</head>
<body>
  <pre>
    <%
      out.println(request.getScheme()); //>http
      out.println(request.getServerName()); //>localhost
      out.println(request.getServerPort()); //>8080
      out.println(request.getRequestURL()); //>http://localhost:8080/selfjsp/chap03_%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88%E6%83%85%E5%A0%B1/n4_%E3%83%98%E3%83%83%E3%83%80%E3%83%BC%E6%83%85%E5%A0%B1/n5_%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88%E3%83%91%E3%82%B9%E3%82%92%E5%8F%96%E5%BE%97%E3%81%99%E3%82%8B/path.jsp
      out.println(request.getRequestURI()); //>/selfjsp/chap03_%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88%E6%83%85%E5%A0%B1/n4_%E3%83%98%E3%83%83%E3%83%80%E3%83%BC%E6%83%85%E5%A0%B1/n5_%E3%83%AA%E3%82%AF%E3%82%A8%E3%82%B9%E3%83%88%E3%83%91%E3%82%B9%E3%82%92%E5%8F%96%E5%BE%97%E3%81%99%E3%82%8B/path.jsp
      out.println(request.getContextPath()); //>/selfjsp
      out.println(request.getServletPath()); //>/chap03_リクエスト情報/n4_ヘッダー情報/n5_リクエストパスを取得する/path.jsp
      out.println(request.getQueryString()); //>keyword=WINGS
      out.println(request.getPathInfo()); //>null
    %>
  </pre>
</body>
</html>