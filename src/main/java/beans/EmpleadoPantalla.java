package beans;

/**
 *
 * @author Hp
 */
public class EmpleadoPantalla {
    
    private Integer numemp;
    private String nombre;
    private String cargo;
    private String telefono;
    private String direccion;

    public EmpleadoPantalla() {
    }

    public EmpleadoPantalla( String nombre, String cargo, String telefono, String direccion) {
       
        this.nombre = nombre;
        this.cargo = cargo;
        this.telefono = telefono;
        this.direccion = direccion;
    }

   

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public Integer getNumemp() {
        return numemp;
    }

    public void setNumemp(Integer numemp) {
        this.numemp = numemp;
    }
    
    
    
    @Override
    public String toString() {
        return "Empleados{" +   ", nombre=" + nombre + ", cargo=" + cargo + ", telefono=" + telefono + ", direccion=" + direccion + '}';
    }
    
    
    
    
}
