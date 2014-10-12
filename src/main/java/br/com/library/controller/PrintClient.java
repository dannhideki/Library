package br.com.library.controller;

import br.com.library.entity.UserRoles;
import br.com.library.interfaces.Print;

/**
 *
 * @author Daniel Hideki
 * @since 23/08/2014
 */
public class PrintClient implements Print{

    @Override
    public void printer(UserRoles userRole) {
        System.out.println("##################  Print Client  #######################");
//        System.out.println("Tipo de usuario: "+userRole.getRole());
//        System.out.println("Nome: "+userRole.getUser().getFirstName());
//        System.out.println("Username: "+userRole.getUser().getUsername());
    }

}
