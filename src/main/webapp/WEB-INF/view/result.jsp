<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado</title>
</head>
<body>
    <h1>Resultado</h1>
    
    <p>El resultado de la operación es: <%= request.getAttribute("result") %></p>
    
    <a href="index.jsp">Volver</a>
    
</body>
</html>
