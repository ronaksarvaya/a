        PrintWriter out = response.getWriter();
        try {
            if (request.getParameter("n1").equals(request.getParameter("n2")))
            {
                out.println("Hello " + request.getParameter("n1"));
            }
            else
            {
                out.println("Login Failed");
            }
        }catch (Exception e){
            out.println("Not valid");
        }