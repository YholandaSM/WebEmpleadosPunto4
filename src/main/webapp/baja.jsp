<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>BAJA DE EMPLEADOS</title>
    </head>
    <!--Formulario de entrada de datos y eliminación en el JavaBean- clase beans.EmpleadoPantalla-->
    <jsp:useBean id="emple" scope="request" 
                 class="beans.EmpleadoPantalla" />
    <jsp:setProperty name="emple" property="*"/>

    <%
        if (request.getParameter("numemp") != null) { %>
    <jsp:forward page="/Controlador?accion=eliminar"/>
    <% }%>
    <body>
    <center><h2>NÚMERO DE EMPLEADO A ELIMINAR</h2>
        <form method="post">

            <p>Número 
                <input name="numemp" 
                       required type="number" size="15" maxlength="15" />
            </p>
            
             <input type="submit" name="eliminar" 
                   value="Eliminar empleado." />
            <input type="reset" name="cancelar" 
                   value="Cancelar entrada." />

        </form>  

        <a href="index.html">Inicio</a>
    </body>
</html>
