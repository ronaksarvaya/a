        PrintWriter out = response.getWriter();
        
        try {
            
            HttpSession session = request.getSession();
            
            if (session.getAttribute("My_Session") == null)
            {
                out.print("<h1>No Session</h1>");
                session.setAttribute("My_Session", "Sun");
                out.print("<h1>Session Created!!</h1>");
            }
            else
            {
                out.print("<h1>Welcome Again</h1>");
                out.print("<h1>Bye Bye !!</h1>");
                session.removeAttribute("My_Session");
            }
            
        }catch (Exception e)
        {
            out.print("<h1>Error: " + e.getMessage() + "</h1>");
        }