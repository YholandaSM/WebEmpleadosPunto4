<html>
    <head>        
        <title>MODIFICACION DE EMPLEADOS</title>
    </head>
    <body>
        <br>
        <h1 align="center">INSERCI&MODIFICACION;N DE EMPLEADO</h1>
        <%
            String mensaje = (String) request.getAttribute("mensaje");
        %>
        <p align="center"><font color="red">
            <%=mensaje%></font></p>
        <p align='center'>
            <a href="/WebEmpleadosPunto4/Controlador?accion=modif">Modificacion de empleado</a></p>  
        <p align="center">
            <a href="index.html">Inicio</a> </p>
    </body>
</html>