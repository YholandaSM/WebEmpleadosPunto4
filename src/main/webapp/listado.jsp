<%@page import="pojos.Empleado"%>
<%@ page import="beans.EmpleadoPantalla, java.util.*"%>
<html><head>
        <title>LISTADO DE EMPLEADOS</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">

            <center> 
                <h2>LISTADO DE EMPLEADOS</h2>

                <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Nº empleado</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Cargo</th>
                            <th scope="col">Teléfono</th>
                            <th scope="col">Dirección</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ArrayList listaemp
                                    = (ArrayList) request.getAttribute("empleados");
                            if (listaemp != null)
                                for (int i = 0; i < listaemp.size(); i++) {
                                    Empleado e = (Empleado) listaemp.get(i);%>  
                        <tr>
                            <th scope="row"><%=e.getNumemp()%></th>
                            <td><%=e.getNombre()%></td>
                            <td><%=e.getCargo()%></td>
                            <td><%=e.getTelefono()%></td>
                            <td><%=e.getDireccion()%></td>

                        </tr>
                        <%}%>


                    </tbody>
                </table>  
                <a href="index.html">Inicio</a>
            </center>
        </div> 
    </body>
</html>

