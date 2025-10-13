        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            int a = Integer.parseInt(request.getParameter("t1"));
            int b = Integer.parseInt(request.getParameter("t2"));
            int ans=0;
            
            switch(request.getParameter("operation")){
                
                case "+":
                    ans=a+b;
                    break;
                case "-":
                    ans=a-b;
                    break;
                case "*":
                    ans=a*b;
                    break;
                case "/":
                    ans=a/b;
                    break;
            }
           out.print(ans);
        } catch(Exception e){
        }