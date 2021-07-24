<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado de IMC</title>
        <%
            String temp = null;
            float peso = 0;
            float altura = 0;
            float imc = 0;
            
            temp = request.getParameter("Peso");
            peso = Float.parseFloat(temp);
            
            temp = request.getParameter("altura");
            altura = Float.parseFloat(temp);
            
            imc = peso/(altura*altura);
            
        %>
    </head>
    <body>
        <h3>Resultado</h3>
        <br  />
        <p>Su IMC es: <%= imc %> </p>
        <% if(imc < 18.5){  %>
        <p style="background-color: blue">Muy abajo de peso</p>
        <%} else if( imc >= 18.5 && imc < 24.9) { %>
        <p style="background-color: greenyellow">Su peso esta normal</p>
        <% } else if ( imc >= 25 && imc < 29.9) {%>
        <p style="background-color: yellow">Esta con sobrepeso</p>
        <% } else if ( imc >= 30 && imc < 39.9) {%>
        <p style="background-color: orange">Esta con Obesidad tipo II</p>
        <% } else if ( imc >= 40) {%>
        <p style="background-color: red">
            <font style="color: white">Esta con Obesidad tipo III</p>
        <%  } %>
        
    </body>
</html>
