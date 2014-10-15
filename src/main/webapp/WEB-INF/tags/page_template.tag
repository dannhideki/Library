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
        <link rel="stylesheet" href="css/jquery-ui.css" />
        <jsp:invoke fragment="header"/>
        <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="js/jquery.dropdown.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.maskedinput.min.js"></script>
        <jsp:invoke fragment="js"/>
    </head>
  <body>
    <div class="container">
            <jsp:include page="header.jsp" />
            <jsp:invoke fragment="content"/>
    </div>
  </body>
</html>