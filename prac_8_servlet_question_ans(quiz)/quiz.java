        PrintWriter out = response.getWriter();
        try {
            
            int total = 3;
            int correctans = 0;
            
            if (request.getParameter("q1").equals("q1a2"))
            {
                correctans += 1;
            }
            if (request.getParameter("q2").equals("q2a1"))
            {
                correctans += 1;
            }
            if (request.getParameter("q3").equals("q3a3"))
            {
                correctans += 1;
            }
            
            out.print("Correct ans: " + correctans);
            out.print("Wrong ans: " + (total - correctans));
            
            
        }catch(Exception e)
        {
            
        }