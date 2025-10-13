    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        try (PrintWriter out = response.getWriter()) {
            out.println("<h1>File Reader</h1>");

            String filename = "/Readfile.txt";
            ServletContext context = getServletContext();
            InputStream input = context.getResourceAsStream(filename);

            if (input == null) {
                out.println("File not found!");
                return;
            }

            try (BufferedReader reader = new BufferedReader(new InputStreamReader(input))) {
                String line;
                out.println("<pre>");
                while ((line = reader.readLine()) != null) {
                    out.println(line);
                    out.flush();
                    try {
                        Thread.sleep(500); // simulate delay
                    } catch (InterruptedException e) {
                    }
                }
                out.println("</pre>");
                out.println("<p>Reading completed.</p>");
            }

        }
    }