/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUDPos;
import Modelo.Posicion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Gildo-PC
 */
public class PosicionDAO implements CRUDPos{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Posicion p = new Posicion();
    
    @Override
    public List listar() {
        ArrayList<Posicion>list=new ArrayList<>();
        String sql = "select * from posicion";
        try {
            con = cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Posicion pos = new Posicion();
                pos.setId_pos(rs.getInt("Id_pos"));
                pos.setNombre(rs.getString("Nombre"));
                pos.setPos_a(rs.getInt("Pos_a"));
                pos.setPos_b(rs.getInt("Pos_b"));
                pos.setLink(rs.getString("Link"));
                pos.setProducto(rs.getInt("Producto"));
                list.add(pos);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Posicion list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Posicion pos) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Posicion pos) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
