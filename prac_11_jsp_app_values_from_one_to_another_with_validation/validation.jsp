<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Validation</title>
</head>
<body>


<form action="" method="get">
    <pre>
        Name: <input type="text" name="name" value=""><br>
        Age: <input type="text" name="age" value=""><br>
        Email: <input type="text" name="email" value=""><br>
    </pre>
    <div>
        <h4>Hobbies</h4>
        <label><input type="checkbox" name="hobby" value="java"> JAVA</label><br>
        <label><input type="checkbox" name="hobby" value="awd"> AWD</label><br>
        <label><input type="checkbox" name="hobby" value="python"> Python</label><br>
    </div>
    <div>
        <h4>Gender</h4>
        <input type="radio" name="gender" value="Male" checked> Male<br>
        <input type="radio" name="gender" value="Female"> Female
    </div>
    <input type="submit" name="clicked" value="submit">
</form>
    <%
    String ans = "";
    if(request.getParameter("clicked") != null){

        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String email = request.getParameter("email");
        String[] hobbies = request.getParameterValues("hobby");

        if(name == null || name.trim().equals("")){
            ans += "Name error<br>";
        }
        if(age == null || age.trim().equals("")){
            ans += "Age cannot be empty<br>";
        }
        if(email == null || email.trim().equals("")){
            ans += "Email error<br>";
        }
        if(hobbies == null || hobbies.length == 0){
            ans += "Select at least 1 hobby<br>";
        }

        if(ans.length() > 0){
            out.print(ans);
        } else {
            // Send to PrintData.jsp with query parameters
            response.sendRedirect("printData.jsp?" + request.getQueryString());
        }
    }
%>
</body>
</html>