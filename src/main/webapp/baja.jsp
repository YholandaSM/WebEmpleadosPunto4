<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>BAJA DE EMPLEADOS</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
        <div class="container">
            <center><h2>NÚMERO DE EMPLEADO A ELIMINAR</h2>
                <form method="post">


                    <div class="form-group row">
                        <label for="formGroupExampleInput2">Número</label>
                        <input type="number" name="numemp" class="form-control" id="formGroupExampleInput2" placeholder="Numero" required="true">
                    </div>

                   <button  type="submit" name="eliminar"  class="btn btn-primary"
                             value="Eliminar empleado." />Eliminar  </button>
                    <button type="reset" name="cancelar" class="btn btn-primary"
                            value="Cancelar entrada." />Cancelar  </button>

                </form>  

                <a href="index.html">Inicio</a>
        </div>
    </body>
</html>
