/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project_galera;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author cdani
 */
public class MeserosDao {
    
    public ArrayList<MeserosVO> llamarMeseros() throws SQLException, ClassNotFoundException{
        ArrayList<MeserosVO> misMeseros = new ArrayList<MeserosVO>();
        ConexionBD con = new ConexionBD();
        try{
            Statement status = con.getConecction().createStatement();
            status.executeQuery("Select * from empleados order by id_empleado desc;");
            ResultSet rs = null;
            rs = status.getResultSet();
            while(rs.next()){
                MeserosVO meseros = new MeserosVO();
                meseros.setId(rs.getInt("id_empleado"));
                meseros.setNombre(rs.getString("nombre_empleado"));
                meseros.setApellido_paterno(rs.getString("apellido_paterno"));
                meseros.setApellido_materno(rs.getString("apellido_materno"));
                misMeseros.add(meseros);
            }
            status.close();
            rs.close();
            con.desconectar();
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "No se puede mostrar el mesero: ("+ e.getMessage()+")");
        }
        return misMeseros;
    }
    
    
}
