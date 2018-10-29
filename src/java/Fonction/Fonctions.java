/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Fonction;

import bean.Matin;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author root
 */
public class Fonctions {
    
    //Declaration variable
    
    public Connection con = null;
    public Statement st = null;
    public ResultSet rst = null;
     List<Matin> all = new ArrayList<Matin>();
    
    // Connexion à la base de donnee
    
    public void connection() {

        try {
            //conteneur = new ArrayList<String>();
            Class.forName("com.mysql.jdbc.Driver");
            //conteneur.add("Pilote chargé");

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Fonctions.class.getName()).log(Level.SEVERE, null, ex);
            //conteneur.add("Erreur de chargement Driver");
        }
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost/employe", "root", "azerty");
            // conteneur.add("Connection établie");

        } catch (SQLException ex) {
            Logger.getLogger(Fonctions.class.getName()).log(Level.SEVERE, null, ex);
            //   conteneur.add("Erreur de connection à la base de donnée");
        }
        // return conteneur;
    }
    
    // methode ajout
   /* public Matin recupereId(String id){
            connection();
            Matin employe = new Matin();
            try{
                PreparedStatement pr = con.prepareStatement("SELECT id FROM matin WHERE id =?" );
                pr.setString(1, employe.getId());
            rst = pr.executeQuery();
            while (rst.next()) {
                id = rst.getString("id");
                employe.id=id;
               return employe;
               
            } }catch (SQLException ex) {
            Logger.getLogger(Fonctions.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
            
    }*/
     public void ajout(Matin employe) {
        
         connection();

        try {
            PreparedStatement pr = con.prepareStatement("insert into matin(id, name, description) VALUES (?,?,?)");
            pr.setString(1, employe.getId());
            pr.setString(2, employe.getName());
            pr.setString(3, employe.getDescription());
            pr.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Fonctions.class.getName()).log(Level.SEVERE, null, ex);
        }
        // return a;
    }
    
     public List<Matin> affiche() {//////////Methode pour afficher tous les livres
        connection();
        try {
            st = con.createStatement();
            rst = st.executeQuery("select * from matin");
            while (rst.next()) {
                Matin employe = new Matin();
                String id = rst.getString("id");
                String name = rst.getString("name");
                String description = rst.getString("description");
                employe.setId(id);
                employe.setName(name);
                employe.setDescription(description);
                all.add(employe);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Fonctions.class.getName()).log(Level.SEVERE, null, ex);
        }
        return all;
    }
     //Delete
     public void delete(Matin employe){
          connection();

        try {
            PreparedStatement pr = con.prepareStatement("delete from matin where id=?");
            pr.setString(1, employe.getId());
            pr.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Fonctions.class.getName()).log(Level.SEVERE, null, ex);
        }
        //modification
     }    
    public void modifier(Matin employe){
         connection();

        try {
            PreparedStatement pr = con.prepareStatement("update matin set name=?, description=? where id=?");
            pr.setString(3, employe.getId());
            pr.setString(1, employe.getName());
            pr.setString(2, employe.getDescription());
            pr.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Fonctions.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }   
        
        
      
     
}
