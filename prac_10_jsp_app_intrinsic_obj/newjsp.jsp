<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Use of Intrinsic object in JSP</h1>
        
        <h1>Request Object</h1>
        ContextPath: <%= request.getContextPath() %><br>
        QueryString: <%= request.getQueryString() %><br>
        Remote Host: <%= request.getRemoteHost() %><br>
        
        <h1>Response Object</h1>
        Character Encoding Type: <%= response.getCharacterEncoding() %><br>
        Content Type: <%= response.getContentType() %><br>
        Locale: <%= response.getLocale() %><br>
        
        <h1>Session Object</h1>
        ID: <%= session.getId() %> <br>
        Creation Time: <%= new java.util.Date(session.getCreationTime()) %> <br>
        Last Access Time: <%= new java.util.Date(session.getLastAccessedTime()) %> <br>
        
    </body>
</html>
