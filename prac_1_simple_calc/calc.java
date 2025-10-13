        PrintWriter out = response.getWriter();
        try {
            int a = Integer.parseInt(request.getParameter("t1"));
            int b = Integer.parseInt(request.getParameter("t2"));
            
            int ans = 0;
            
            switch (request.getParameter("operation")){
                case "Add":
                    ans = a + b;
                    break;
                case "Subtract":
                    ans = a - b;
                    break;
                case "Multiply":
                    ans = a * b;
                    break;
                case "Divide":
                    ans = a / b;
                    break;
            }
            
            out.print(ans);
        }catch (Exception e){
            
        }