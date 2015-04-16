package br.com.library.entity;

import br.com.library.enums.TypeBook;
import br.com.library.interfaces.Matches;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.Transient;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
@Entity
@Table(name = "BOOK")
public class Book implements Serializable{
    
    @Id
    @GeneratedValue
    private Integer id;
    @Transient
    private Matches matches;
    
    @Column(name = "date_release")
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date dateRelease;
    
    @Column(name = "type_book")
    @Enumerated(EnumType.STRING)
    private TypeBook typeBook;
    
    private String title;
    private String author;
    private String isbn;

    public Book(String title, Date dateRelease, TypeBook typeBook, String author,String isbn) {
        this.dateRelease = dateRelease;
        this.typeBook = typeBook;
        this.title = title;
        this.author = author;
        this.isbn = isbn;
    }

    public Book() {
    }
    
    public boolean compare(Book book){
        
        return matches.compare(this, book);
    }

    public Matches getMatches() {
        return matches;
    }

    public void setMatches(Matches matches) {
        this.matches = matches;
    }
 
    public Date getDateRelease() {
        return dateRelease;
    }
    public void setDateRelease(Date dateRelease) {
        this.dateRelease = dateRelease;
    }

    public TypeBook getTypeBook() {
        return typeBook;
    }

    public void setTypeBook(TypeBook typeBook) {
        this.typeBook = typeBook;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    @Override
    public String toString() {
        return "Title: " + this.title+ "\n Date release: " + this.dateRelease + "\n Type: " + this.typeBook + "\n Author: " + this.author+ "\n ISBN: " + this.isbn; //To change body of generated methods, choose Tools | Templates.
    }
    
}