<%-- 
    Document   : calculaRetencion.jsp
    Created on : 18-ene-2021, 20:05:50
    Author     : DAW-A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="clases.Retencion"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retenciones con objetos</title>
    </head>
    <body>
        <h1>Calculando retenciones</h1>
        
        <% 
        String salario = request.getParameter("salario");
        String nombre = request.getParameter("nombre");
        Retencion nuevaRetencion = new Retencion(salario);
        %>
        
        <h3>Nombre empleado: <%= nombre %> </h3>
        <h3>Salario bruto: <%= nuevaRetencion.getSalario() %> €</h3>
        <h3>Retención: <%= nuevaRetencion.getRetencion() %> €</h3>
        <h3>Salario neto: <%= nuevaRetencion.getSalarioNeto() %> €</h3>
    </body>
</html>
