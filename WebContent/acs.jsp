<%@ page import="java.io.IOException,
java.io.PrintWriter,
java.util.Enumeration,
javax.servlet.http.HttpServlet,
javax.servlet.http.HttpServletRequest,
javax.servlet.http.HttpServletResponse"%>
<%
    response.setContentType("text/html");
        out.println("<!DOCTYPE html>");
        out.println("<html lang=\"en\">");
        out.println("<head>");
        out.println("<title>HTTP headers</title>"); 
        out.println("<body>"); 
        out.println("<p>Headers</p>");
        
        Enumeration<String> headerNames = request.getHeaderNames();
        
        out.println("<ol>");
        
        while (headerNames.hasMoreElements())
        {
    out.print("<li>"); 
    String headerName = headerNames.nextElement();
    out.print(headerName + " = ");
    String headerValue = request.getHeader(headerName);
    out.print(headerValue);
    out.println("</li>"); 
        }
        out.println("</ol>");

        Enumeration<String> parameters = request.getParameterNames();
        
        out.println("<ol>");
        
        while (parameters.hasMoreElements())
        {
    out.print("<li>");
    String parameterName = parameters.nextElement();
    out.print(parameterName + " = ");
    String parameterValue = request.getParameter(parameterName);
    out.print(parameterValue);
    out.println("</li>");
        }
        out.println("</ol>");
        

%>