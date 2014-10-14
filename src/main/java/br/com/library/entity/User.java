package br.com.library.entity;

import br.com.library.enums.TypeUser;
import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author Daniel Hideki
 * @since 14/08/2014
 */
@Entity
@Table(name="users")
public class User implements Serializable{
    
    @Id
    @GeneratedValue
    @Column(name = "user_id")
    private int id;
    
    @Column(name = "first_name")  
    private String firstName;  

    @Column(name = "last_name")  
    private String lastName;  
    
     private String email;  
    private String phone; 
    
    private String username;
    
    private String password;
    
    private boolean enabled;
    
    @Transient
    private TypeUser role;
         
    
    @ManyToOne
    @JoinColumn(name="user_roles_id")
    private UserRoles userRolesId;

    public User(String firstName, String lastName, String email, String phone, String username, String password, boolean enabled,UserRoles userRoles) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.username = username;
        this.password = password;
        this.enabled = enabled;
        this.userRolesId = userRoles;
    }

    public User() {
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public UserRoles getUserRolesId() {
        return userRolesId;
    }

    public void setUserRolesId(UserRoles userRolesId) {
        this.userRolesId = userRolesId;
    }

    public TypeUser getRole() {
        return role;
    }

    public void setRole(TypeUser role) {
        this.role = role;
    }
}