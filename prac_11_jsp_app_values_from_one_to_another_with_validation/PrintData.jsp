<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%

            String[] hobbies = request.getParameterValues("hobby");
            out.print(request.getParameter("name") + "<br>");
            out.print(request.getParameter("age") + "<br>");
            out.print(request.getParameter("email") + "<br>");

            out.print(request.getParameter("gender") + "<br>");
            for (int i = 0; i < hobbies.length; i++) {
                out.print(hobbies[i]);
                if (i < hobbies.length - 1) {
                    out.print(", ");
                }
            }

        %>
    </body>
</html>