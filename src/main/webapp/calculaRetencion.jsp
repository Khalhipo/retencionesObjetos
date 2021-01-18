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
        double salario = Double.parseDouble(request.getParameter("salario"));
        String nombre = request.getParameter("nombre");
        %>
        <jsp:useBean id="ret" class="clases.Retencion"/>
        <jsp:setProperty name="ret" property="salario" value="<%= salario %>"/>
        
        <h3>Nombre empleado: <%= nombre %> </h3>
        <h3>Salario bruto: <jsp:getProperty name="ret" property="salario"/> €</h3>
        <h3>Retención: <jsp:getProperty name="ret" property="retencion"/> €</h3>
        <h3>Salario neto: <jsp:getProperty name="ret" property="salarioNeto"/> €</h3>
    </body>
</html>
