/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;


import beans.EmpleadoPantalla;
import daos.EmpleadoDAO;
import factory.DAOFactory;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojos.Empleado;

/**
 *
 * @author Hp
 */
public class Controlador extends HttpServlet {

    DAOFactory bd = DAOFactory.getDAOFactory(DAOFactory.MYSQL);

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EmpleadoDAO empDAO = bd.getEmpleadoDAO();

        // se obtiene la acción a realizar
        String op = request.getParameter("accion");

        // pantalla de alta de departamento
        if (op.equals("alta")) {

            response.sendRedirect("alta.jsp");
        }

        // se inserta departamento en la tabla
        if (op.equals("insertar")) {
            EmpleadoPantalla empPantalla = (EmpleadoPantalla) request.getAttribute("emple");// obtenerlos

            Empleado empleado = new Empleado(empPantalla.getNombre(),empPantalla.getCargo(),empPantalla.getTelefono(),
                    empPantalla.getDireccion());
            boolean insertar = empDAO.insertarEmp(empleado);
            String mensaje = "";
            if (insertar) {
                mensaje = "Empleado " + empPantalla.getNombre() + " insertado";
            } else {
                mensaje = "Error al insertar empleado " +empPantalla.getNombre();
            }

            request.setAttribute("mensaje", mensaje); //se envía mensaje al jsp
            RequestDispatcher rd
                    = request.getRequestDispatcher("/EmpleadoInsertado.jsp");
            rd.forward(request, response);

        }
        // se obtienen los datos de los departamentos para visualizarlos
        if (op.equals("listado")) {
            ArrayList lista = empDAO.listarEmp();
            request.setAttribute("empleados", lista);
            RequestDispatcher rd = request.getRequestDispatcher("/listado.jsp");
            rd.forward(request, response);
        }
    }

    public void destroy() {
        bd = null;
    }

}
