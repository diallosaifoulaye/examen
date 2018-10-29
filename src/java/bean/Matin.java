/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author root
 */
public class Matin {
    
    private String id;
    private String name;
    private String description;
    
    public Matin() {
    }

    public String getId() {
        return id;
    }
    
    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public void setId(String id) {
        this.id = id;
    }
       
    public void setName(String name) {
        this.name = name;
    }
    
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
