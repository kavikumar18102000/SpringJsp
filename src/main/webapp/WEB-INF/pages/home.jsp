
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>

<%
    // Sample lists to compare
    List<String> list1 = Arrays.asList("apple", "banana", "orange");
    List<String> list2 = Arrays.asList("banana", "orange", "pear");

    out.println("<h2>List 1</h2>");
    out.println("<table border='1'>");
    out.println("<tr><th>Item</th></tr>");
    for (String item : list1) {
        out.println("<tr><td>" + item + "</td></tr>");
    }
    out.println("</table>");

    out.println("<h2>List 2</h2>");
    out.println("<table border='1'>");
    out.println("<tr><th>Item</th></tr>");
    for (String item : list2) {
        out.println("<tr><td>" + item + "</td></tr>");
    }
    out.println("</table>");

    out.println("<h2>Changes</h2>");
    out.println("<table border='1'>");
    out.println("<tr><th>List 1</th><th>List 2</th></tr>");
    int maxLength = Math.max(list1.size(), list2.size());
    for (int i = 0; i < maxLength; i++) {
        String item1 = (i < list1.size()) ? list1.get(i) : "";
        String item2 = (i < list2.size()) ? list2.get(i) : "";
        String cssClass = (item1.equals(item2)) ? "" : "highlight-changed";
        out.println("<tr class='" + cssClass + "'><td>" + item1 + "</td><td>" + item2 + "</td></tr>");
    }
    out.println("</table>");
%>