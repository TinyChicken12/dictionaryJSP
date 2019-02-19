<%--
  Created by IntelliJ IDEA.
  User: KienTMDT
  Date: 2/19/2019
  Time: 6:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import=" java.util.Map" %>
<%@ page import=" java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dictionary = new HashMap<>();
%>
<%
    dictionary.put("Hello", "Xin chào");
    dictionary.put("Bye", "Tạm biệt");
    dictionary.put("Love" ,"Yêu");
    String search = request.getParameter("txtSearch");
    String result = dictionary.get(search);
    if (result ==null){
        out.print ("Not Found");
    }
    else
    {
     out.print("Result: " + result);
    }
%>


</body>
</html>
