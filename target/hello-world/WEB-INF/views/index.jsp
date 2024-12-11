<%@ page isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<body>
    <h2>hi</h2>
    <h1>It's working on Tomcat server.</h1>
    <hr>
    <h1>${msg}</h1>
    <h1>Have a nice day.</h1>
    <h2>Today is <fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></h2>
</body>
</html>