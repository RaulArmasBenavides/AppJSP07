
package uni.sistemas.entity;

public class Item {
  //atributos
 private int id;
 private String nombre;
 private double precio;
 private int cantidad;
 private double importe;
 
 private static int ultimo=0;
 //constructor

    public Item() {
        ultimo++;
        id=ultimo;
    }
    //metodos: get y set

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getImporte() {
        return importe;
    }

    public void setImporte(double importe) {
        this.importe = importe;
    }
    
 
}
