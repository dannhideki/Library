package br.com.library.entity;

import br.com.library.enums.TypeUser;
import br.com.library.interfaces.Print;
import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author Daniel Hideki
 * @since 18/08/2014
 */
@Entity
@Table(name = "user_roles")
public class UserRoles implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "USER_ROLE_ID")
    private int userRoleId;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="user_id", unique= true, nullable=true, insertable=true, updatable=true)
    private User user;
   
    @Column(name = "role")
    @Enumerated(EnumType.STRING)
    private TypeUser role;
    
    @Transient
    private Print  print;

    public UserRoles() {
    }

    public UserRoles(User user, TypeUser role) {
        this.user = user;
        this.role = role;
    }
    
    public void printer(){
        print.printer(this);
    }

    public int getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(int userRoleId) {
        this.userRoleId = userRoleId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public TypeUser getRole() {
        return role;
    }

    public void setRole(TypeUser role) {
        this.role = role;
    }

    public Print getPrint() {
        return print;
    }

    public void setPrint(Print print) {
        this.print = print;
    }

}