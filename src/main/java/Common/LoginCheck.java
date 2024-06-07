/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Common;

import Controller.JavaMongo;
import Model.Users;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class LoginCheck extends JavaMongo {

    public static Users check(String email, String password) throws Exception {

        ArrayList<Users> users = getAllUser();

        for (Users u : users) {
            if (u.getGmail().equals(email) || u.getPassword().equals(password)) {
                return u;
            }
        }

        return null;
    }

}
