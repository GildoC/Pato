/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.Posicion;
import java.util.List;


public interface CRUDPos {
    public List listar();
    public Posicion list(int id);
    public boolean add(Posicion pos);
    public boolean edit(Posicion pos);
    public boolean delete(int id);
}
