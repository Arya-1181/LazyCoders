<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <title>Notes</title>
</head>
<body>
    <h1>Notes</h1>
    
    <%
    String selectedTopic = request.getParameter("topic");

    List<String> freeNotes = new ArrayList<>();
    List<String> paidNotes = new ArrayList<>();
    
    if (selectedTopic.equals("math")) {
        freeNotes.add("Math Note 1");
        freeNotes.add("Math Note 2");
        paidNotes.add("Math Note 3 (Paid)");
    } else if (selectedTopic.equals("science")) {
        freeNotes.add("Science Note 1");
        freeNotes.add("Science Note 2");
        paidNotes.add("Science Note 3 (Paid)");
    }
    

    out.println("<h2>Free Notes:</h2>");
    for (String note : freeNotes) {
        out.println("<p>" + note + "</p>");
    }

    out.println("<h2>Paid Notes:</h2>");
    for (String note : paidNotes) {
        out.println("<p>" + note + "</p>");
    }
    %>
</body>
</html>
