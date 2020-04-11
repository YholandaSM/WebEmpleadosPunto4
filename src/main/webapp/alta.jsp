<!DOCTYPE html>
<html>
    <head>
        <title>ALTA DE EMPLEADOS</title>
    </head>
    <!--Formulario de entrada de datos e Inserción en el JavaBean- clase beans.Empleado-->
    <jsp:useBean id="emple" scope="request" 
                 class="beans.EmpleadoPantalla" />
    <jsp:setProperty name="emple" property="*"/>

    <%
    if (request.getParameter("nombre") != null) { %>
    <jsp:forward page="/Controlador?accion=insertar"/>
    <% }%>

    <body>
    <center><h2>ENTRADA DE DATOS DE EMPLEADOS</h2>
        <form method="post">
           
            <p>Nombre: 
                <input name="nombre" 
                       required type="text" size="15" maxlength="15" /> </p>
            <p>Cargo 
                <input name="cargo" required type="text" 
                       size="15" maxlength="15" /> </p>  
            <p>Telefono 
                <input name="telefono" required type="text" 
                       size="15" maxlength="15" /> </p> 
            <p>Direccion 
                <input name="direccion" required type="text" 
                       size="15" maxlength="15" /> </p>     
            
            <input type="submit" name="insertar" 
                   value="Insertar empleado." />
            <input type="reset" name="cancelar" 
                   value="Cancelar entrada." />
        </form>  

        <a href="index.html">Inicio</a>
    </center>
</body>
</html>



