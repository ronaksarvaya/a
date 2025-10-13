        PrintWriter out = response.getWriter();
        try {
            if ("admin".equals(request.getParameter("t1")) && "admin".equals(request.getParameter("t2")))
            {
                RequestDispatcher rd = request.getRequestDispatcher("welcome");
                rd.forward(request, response);
            }
            else
            {
                RequestDispatcher rd = request.getRequestDispatcher("welcomehtml.html");
                rd.forward(request, response);
            }
        }catch(Exception e){
        
        }