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

    DAOFactory  bdMysql = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
    DAOFactory  bdNeodatis = DAOFactory.getDAOFactory(DAOFactory.NEODATIS);

    EmpleadoDAO empDAO;

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        String op = request.getParameter("bbdd");
        if (op != null) {
            if (op.equals("mysql")) {
                empDAO = bdMysql.getEmpleadoDAO();
            } else {
                empDAO = bdNeodatis.getEmpleadoDAO();
            }
        }

        // se obtiene la acción a realizar
        op = request.getParameter("accion");

        // pantalla de alta de departamento
        if (op.equals("alta")) {

            response.sendRedirect("alta.jsp");
        }

        // se inserta departamento en la tabla
        if (op.equals("insertar")) {
            EmpleadoPantalla empPantalla = (EmpleadoPantalla) request.getAttribute("emple");// obtenerlos

            Empleado empleado = new Empleado(empPantalla.getNombre(), empPantalla.getCargo(), empPantalla.getTelefono(),
                    empPantalla.getDireccion());
            boolean insertar = empDAO.insertarEmp(empleado);
            String mensaje = "";
            if (insertar) {
                mensaje = "Empleado " + empPantalla.getNombre() + " insertado";
            } else {
                mensaje = "Error al insertar empleado " + empPantalla.getNombre();
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

        if (op.equals("modif")) {
            response.sendRedirect("modificacion.jsp");
        }

        if (op.equals("baja")) {

            response.sendRedirect("baja.jsp");
        }

        if (op.equals("eliminar")) {

            EmpleadoPantalla empleado = (EmpleadoPantalla) request.getAttribute("emple");// obtenerlos
            boolean eliminar = empDAO.eliminarEmp(empleado.getNumemp());
            String mensaje = "";
            if (eliminar) {
                mensaje = "Empleado " + empleado.getNumemp() + " eliminado";
            } else {
                mensaje = "Error al eliminar empleado " + empleado.getNumemp();
            }

            request.setAttribute("mensaje", mensaje); //se envía mensaje al jsp
            RequestDispatcher rd
                    = request.getRequestDispatcher("/EmpleadoEliminado.jsp");
            rd.forward(request, response);

        }

        if (op.equals("modificar")) {

            EmpleadoPantalla empleado = (EmpleadoPantalla) request.getAttribute("emple");
            Empleado emp = new Empleado(empleado.getNombre(), empleado.getCargo(), empleado.getDireccion(),
                    empleado.getTelefono());
            boolean modificar = empDAO.modificarEmp(empleado.getNumemp(), emp);
            String mensaje = "";
            if (modificar) {
                mensaje = "Empleado " + empleado.getNumemp() + " modificado";
            } else {
                mensaje = "Error al modificar empleado " + empleado.getNumemp();
            }

            request.setAttribute("mensaje", mensaje); //se envía mensaje al jsp
            RequestDispatcher rd
                    = request.getRequestDispatcher("/EmpleadoModificado.jsp");
            rd.forward(request, response);
        }
        

    }

    @Override
    public void destroy() {

      
        bdMysql = null;
        bdNeodatis = null;

    }

}
