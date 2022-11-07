/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project_galera;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author cdani
 */
public class ConexionBD {
    String bd="galera";
    String login="root";
    String password="12345678";
    String url="jdbc:mysql://localhost/"+bd;
    Connection con = null;
    
    public ConexionBD() throws SQLException, ClassNotFoundException{
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection(url, login, password);
            if(con!=null){
                
            }else{
                System.out.print("No se puede conectar.");
            }
        } catch (SQLException ex){
            
        }
    }
    
    public Connection getConecction(){
        return con;
    }
    
    public void desconectar(){
        con=null;
    }
}
