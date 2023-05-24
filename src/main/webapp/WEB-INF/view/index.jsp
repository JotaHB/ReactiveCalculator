<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculadora</title>
    <script>
        function submitForm() {
            document.getElementById("calculateForm").submit();
        }
    </script>
</head>
<body>
    <h1>Calculadora</h1>

    <form id="calculateForm" action="calculate" method="POST">
        <input type="number" name="num1" placeholder="Ingrese el primer número" required>
        <input type="number" name="num2" placeholder="Ingrese el segundo número" required>
        <select name="operator" onchange="submitForm()">
        	<option value="">Select</option>
            <option value="+">Suma</option>
            <option value="-">Resta</option>
            <option value="*">Multiplicación</option>
            <option value="/">División</option>
        </select>
    </form>

    <h1>Result:</h1>
    <p>The result is:</p>
    <p>${result}</p>
</body>
</html>
