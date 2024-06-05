/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.io.Serializable;

/**
 *
 * @author ASUS
 */
public class Users implements Serializable{
    private String Name;
    private String email;
    private String Password;
    private String role;
    
    public Users(){}

    public Users(String Name, String email, String Password, String role) {
        this.Name = Name;
        this.email = email;
        this.Password = Password;
        this.role = role;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Users{" + "Name=" + Name + ", email=" + email + ", Password=" + Password + ", role=" + role + '}';
    }
    
}
