package br.com.library.tests;

import br.com.library.controller.MatchesTitle;
import br.com.library.controller.MatchesType;
import br.com.library.controller.PrintClient;
import br.com.library.controller.PrintUser;
import br.com.library.dao.BookDaoImpl;
import br.com.library.dao.UserDaoImpl;
import br.com.library.dao.UserRolesDaoImpl;
import br.com.library.entity.Book;
import br.com.library.entity.User;
import br.com.library.entity.UserRoles;
import br.com.library.enums.TypeBook;
import br.com.library.enums.TypeUser;
import br.com.library.service.BookServiceImpl;
import br.com.library.service.UserRolesServiceImpl;
import br.com.library.service.UserServiceImpl;
import br.com.library.views.View;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Daniel Hideki
 * @since 18/08/2014
 */
public class Facade {
    
    private List<Book> books;
    private List<UserRoles> users;
    
    private BookServiceImpl bookService;
    
    private UserServiceImpl userService;
    
    private UserRolesServiceImpl userRolesService;
    
    private BookDaoImpl bookDaoImpl;
    
    private UserDaoImpl userDaoImpl;
    
    private UserRolesDaoImpl userRolesDaoImpl;
    
    private View view;
    
    public Facade() {
        this.books = new ArrayList<Book>();
        this.users = new ArrayList<UserRoles>();
        this.bookService = new BookServiceImpl();
        this.userService = new UserServiceImpl();
        this.userRolesService = new UserRolesServiceImpl();
        this.bookDaoImpl = new BookDaoImpl();
        this.userDaoImpl = new UserDaoImpl();
        this.userRolesDaoImpl = new UserRolesDaoImpl();
        this.view = new View();
    }
    
    public void initialize(){
        
        
        SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Book book1 = new Book("Harry Potter", new Date(), TypeBook.FICTION, "H.k.holling","123-1");
        Book book2 = new Book("O senhor dos Aneis", new Date(), TypeBook.FICTION, "H.k.holling","321-1");
        Book book3 = new Book("A hora do pesadelo", new Date(), TypeBook.HORROR, "Autor","345-1");
        bookDaoImpl.setSessionFactory(factory);
        bookService.setBookDao(this.bookDaoImpl);
        bookService.registerObserver(view);
        bookService.insert(book1);
        bookService.insert(book2);
        bookService.insert(book3);
        
        UserRoles userRoles = new UserRoles(TypeUser.ROLE_ADMIN);
        UserRoles userRoles1 = new UserRoles(TypeUser.ROLE_USER);
        
        User user1 = new User("Daniel", "Cassi", "dann.hideki@gmail.com", "12-1234-5678", "dann", "123456", true,userRoles);
        User user2 = new User("Tarcisio", "Aparecido", "tar@gmail.com", "12-0987-6543", "tar", "654321", true,userRoles1);
        userDaoImpl.setSessionFactory(factory);
        userService.setUserDao(this.userDaoImpl);
        
        //userService.insert(user1);
        //userService.insert(user2);
        
        userRolesDaoImpl.setSessionFactory(factory);
        userRolesService.setUserRolesDao(userRolesDaoImpl);
        
        
        userRoles.setPrint(new PrintUser());
        
        userRoles1.setPrint(new PrintClient());
        
        //userRolesService.insert(userRoles);
        //userRolesService.insert(userRoles1);
        
    }
    
    public void generate(){
        
        Book findBook1 = new Book("Harry Potter", new Date(), TypeBook.FICTION, "H.k.holling","123-1");
        findBook1.setMatches(new MatchesTitle());
        
        Book findBook2 = new Book("O chamado", new Date(), TypeBook.HORROR, "Sei la","rrre3");
        findBook2.setMatches(new MatchesType());
        
        books = bookService.getList();
        users = userRolesService.getList();
        
        System.out.println("");
        System.out.println("##################################");
        System.out.println("Procurando livro pelo titulo:"+findBook1.getTitle());
        for (Book book : books) {
            book.setMatches(new MatchesTitle());
            if(book.compare(findBook1)){
                System.out.println("Found : "+ book.toString());
            }
        }
        
        System.out.println("");
        System.out.println("##################################");
        System.out.println("Procurando livro pelo tipo:"+findBook2.getTypeBook());
        for (Book book : books) {
            book.setMatches(new MatchesType());
            if(book.compare(findBook2)){
                System.out.println("Found : "+ book.toString());
            }
        }
        
        System.out.println("");
        System.out.println("##################################");
        System.out.println("Apenas para teste de banco, listando os usuarios:");
        for (UserRoles user : users) {
            user.setPrint(new PrintClient());
            user.printer();
        }
        
        System.out.println("");
        System.out.println("##################################");
        System.out.println("Gerando Json dos livros atraves do View:");
        System.out.println(view.generateJSON());
        
    }

}
