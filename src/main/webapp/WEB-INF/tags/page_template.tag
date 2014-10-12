<%@ attribute name="header" fragment="true" %>
<%@ attribute name="content" fragment="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>${pageTitle}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Daniel Hideki" />
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
        <jsp:invoke fragment="header"/>
    </head>
  <body>
    <div class="container">
            <jsp:include page="header.jsp" />
            <jsp:invoke fragment="content"/>
    </div>
  </body>
</html>