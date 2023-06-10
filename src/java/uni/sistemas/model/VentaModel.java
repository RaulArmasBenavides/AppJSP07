
package uni.sistemas.model;

import java.util.ArrayList;
import java.util.List;
import uni.sistemas.entity.Item;

public class VentaModel {
  //variable de tipo coleccion List
 List<Item> lista;

 //constructor
 public VentaModel() {
  lista = new ArrayList<>();//crea objeto lista
 }
 
  //metodos
 public void Registrar(Item ve) {
  lista.add(ve);
 }

 public List<Item> listado() {
  return lista;
 }
  
}
