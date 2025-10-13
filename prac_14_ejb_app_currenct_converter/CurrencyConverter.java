    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();
        try {
            String input = request.getParameter("amt");
            Float amnt = Float.parseFloat(input);
            if (request.getParameter("curr").equals("r2d")) {
                out.println("<h1>" + amnt + "Rupees=" + convertBean.r2d(amnt) + "Dollars</h1>");
            }
            if (request.getParameter("curr").equals("d2r")) {
                out.println("<h1>" + amnt + "Dollars=" + convertBean.d2r(amnt) + "Rupees</h1>");
            }
        } catch (Exception e){}

    }