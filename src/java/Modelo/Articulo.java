package Modelo;


public class Articulo {
    int id;
    String nombre;
    String descripcion;
    int cantidad;

    public Articulo() { 
    }

    public Articulo(String nombre, String descripcion, int cantidad) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.cantidad = cantidad;
    }
        
    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }
    
    public void setDescripcion(String descripcion){
        this.descripcion = descripcion;
}
    
    public String getDescripcion(){
        return this.descripcion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
}
