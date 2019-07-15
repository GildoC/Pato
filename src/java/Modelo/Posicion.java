/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

public class Posicion {
    int id_pos;
    String nombre;
    int pos_a;
    int pos_b;
    String link;
    int producto;

    public Posicion() {
        
    }
        
    public Posicion(int id_pos, String nombre, int pos_a, int pos_b, String link, int producto) {
        this.id_pos = id_pos;
        this.nombre = nombre;
        this.pos_a = pos_a;
        this.pos_b = pos_b;
        this.link = link;
        this.producto = producto;
    }

    public int getId_pos() {
        return id_pos;
    }

    public void setId_pos(int id_pos) {
        this.id_pos = id_pos;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPos_a() {
        return pos_a;
    }

    public void setPos_a(int pos_a) {
        this.pos_a = pos_a;
    }

    public int getPos_b() {
        return pos_b;
    }

    public void setPos_b(int pos_b) {
        this.pos_b = pos_b;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public int getProducto() {
        return producto;
    }

    public void setProducto(int producto) {
        this.producto = producto;
    }
   
}
