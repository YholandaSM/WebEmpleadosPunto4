<!DOCTYPE html>
<html>
    <head>
        <title>ALTA DE EMPLEADOS</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <!--Formulario de entrada de datos e Inserción en el JavaBean- clase beans.EmpleadoPantalla-->
    <jsp:useBean id="emple" scope="request" 
                 class="beans.EmpleadoPantalla" />
    <jsp:setProperty name="emple" property="*"/>

    <%
        if (request.getParameter("nombre") != null) { %>
    <jsp:forward page="/Controlador?accion=insertar"/>
    <% }%>

    <body>
        <div class="container">
            <center><h2>ENTRADA DE DATOS DE EMPLEADOS</h2>

                <form method="post">
                    <div class="form-group row">
                        <label for="formGroupExampleInput">Nombre</label>
                        <input type="text" name="nombre" class="form-control" id="formGroupExampleInput" placeholder="Nombre" required="true">
                    </div>
                    <div class="form-group row">
                        <label for="formGroupExampleInput2">Cargo</label>
                        <input type="text" name="cargo" class="form-control" id="formGroupExampleInput2" placeholder="Cargo" required="true">
                    </div>
                    <div class="form-group row">
                        <label for="formGroupExampleInput2">Teléfono</label>
                        <input type="text" name="telefono" class="form-control" id="formGroupExampleInput2" placeholder="Teléfono" required="true">
                    </div>
                    <div class="form-group row">
                        <label for="formGroupExampleInput2">Dirección</label>
                        <input type="text" name="direccion" class="form-control" id="formGroupExampleInput2" placeholder="Dirección" required="true">
                    </div>

                    <button  type="submit" name="insertar"  class="btn btn-primary"
                             value="Insertar empleado." />Insertar  </button>
                    <button type="reset" name="cancelar" class="btn btn-primary"
                            value="Cancelar entrada." />Cancelar  </button>
                </form>
                <a href="index.html">Inicio</a>
            </center>

        </div>
    </body>
</html>



