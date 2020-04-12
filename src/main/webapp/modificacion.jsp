<%@page import="pojos.Empleado"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MODIFICACIÓN DE UN EMPLEADO</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <!--Formulario de entrada de datos y eliminación en el JavaBean- clase beans.EmpleadoPantalla-->
    <jsp:useBean id="emple" scope="request" 
                 class="beans.EmpleadoPantalla" />
    <jsp:setProperty name="emple" property="*"/>
    <%
        if (request.getParameter("numemp") != null) { %>
    <jsp:forward page="/Controlador?accion=modificar"/>
    <% }%>
    <body>
        <div class="container">

            <form method="post">
                <center><h2>NÚMERO DE EMPLEADO A MODIFICAR</h2>
                    <p>Número 
                        <input name="numemp" 
                               required type="number" size="15" maxlength="15" />
                    </p>
                    
                    <BR><BR>
                      <center><h5>CAMPOS A MODIFICAR</h5>    
                    <div class="form-group row">
                        <label for="formGroupExampleInput">Nombre</label>
                        <input type="text" name="nombre" class="form-control" id="formGroupExampleInput" placeholder="Nombret">
                    </div>
                    <div class="form-group row">
                        <label for="formGroupExampleInput2">Cargo</label>
                        <input type="text" name="cargo" class="form-control" id="formGroupExampleInput2" placeholder="Cargo">
                    </div>
                    <div class="form-group row">
                        <label for="formGroupExampleInput2">Teléfono</label>
                        <input type="text" name="telefono" class="form-control" id="formGroupExampleInput2" placeholder="Teléfono">
                    </div>
                    <div class="form-group row">
                        <label for="formGroupExampleInput2">Dirección</label>
                        <input type="text" name="direccion" class="form-control" id="formGroupExampleInput2" placeholder="Dirección">
                    </div>

                    <button  type="submit" name="modificar"  class="btn btn-primary"
                             value="Insertar empleado." />Modificar  </button>
                    <button type="reset" name="cancelar" class="btn btn-primary"
                            value="Cancelar entrada." />Cancelar  </button>
            </form>



        </form>  

        <a href="index.html">Inicio</a>

    </div>
</body>
</html>
