        PrintWriter out = response.getWriter();
        try {
            if (request.getCookies() == null)
            {
                out.print("<h1>Creating a new cookie</h1>");
                Cookie cookie = new Cookie("cookie", "1");
                response.addCookie(cookie);
                out.print("<h1>Created a new cookie, please refresh...</h1>");
            }
            else
            {
                Cookie[] cookies = request.getCookies();
                
                for (int i = 0; i < cookies.length; i++)
                {
                    if (cookies[i].getName().equals("cookie"))
                    {
                        int x = Integer.parseInt(cookies[i].getValue());
                        
                        Cookie updatedCookie = new Cookie("cookie", Integer.toString(x + 1));
                        
                        response.addCookie(updatedCookie);
                        out.print("<h1>Cookie value: " + (x + 1) + "</h1>");
                        break;
                    }
                }
            }
            
            
        }catch (Exception e)
        {
            out.print("<h1>Error: " + e.getMessage() + "</h1>");
        }