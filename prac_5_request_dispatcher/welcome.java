        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet welcome</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet welcome at " + request.getParameter("t1") + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }