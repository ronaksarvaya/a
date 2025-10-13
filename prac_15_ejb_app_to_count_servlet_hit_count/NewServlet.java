        PrintWriter out = response.getWriter();
        try {

            newSessionBean.increment();

            out.println("" + newSessionBean.getCount());

        } catch (Exception e) {

        }