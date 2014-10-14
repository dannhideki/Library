<%@ attribute name="header" fragment="true" %>
<%@ attribute name="content" fragment="true" %>
<%@ attribute name="js" fragment="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Library BD Lab IV and Design Patterns</title>
        <link rel="stylesheet" type="text/css" href="css/main.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
        <jsp:invoke fragment="header"/>
        <jsp:invoke fragment="js"/>
    </head>
  <body>
    <div class="container">
            <jsp:include page="header.jsp" />
            <jsp:invoke fragment="content"/>
    </div>
  </body>
</html>