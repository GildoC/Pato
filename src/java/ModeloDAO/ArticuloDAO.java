
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Articulo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ArticuloDAO implements CRUD{
Conexion cn = new Conexion();
Connection con;
PreparedStatement ps;
ResultSet rs;
Articulo a= new Articulo();
    
    
    @Override
    public List listar() {
        ArrayList<Articulo> list= new ArrayList<>();
        String sql = "Select * from producto";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Articulo art = new Articulo();
                art.setId(rs.getInt("id_prod"));
                art.setNombre(rs.getString("nombre"));
                art.setDescripcion(rs.getString("descripcion"));
                art.setCantidad(rs.getInt("cantidad"));
                list.add(art);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Articulo list(int id) {
    String sql = "Select * from producto where id_prod="+id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Articulo art = new Articulo();
                a.setId(rs.getInt("id_prod"));
                a.setNombre(rs.getString("nombre"));
                a.setDescripcion(rs.getString("descripcion"));
                a.setCantidad(rs.getInt("cantidad"));
            }
        } catch (Exception e) {
        }
        return a;
    }
    

    @Override
    public boolean add(Articulo art) {
        String sql="insert into producto(nombre, descripcion, cantidad) values ('"+art.getNombre()+"','"+art.getDescripcion()+"','"+art.getCantidad()+"')";
        try {
            con = cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Articulo art) {
        String sql="Update producto set nombre='"+art.getNombre()+"', descripcion='"+art.getDescripcion()+"', cantidad='"+art.getCantidad()+"'where id_prod="+art.getId();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
       String sql="delete from producto where id_prod="+id;
        try {
            con = cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (Exception e) {
        }
       
        return false;
    }
    
}
