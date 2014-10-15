package br.com.library.controller;

import br.com.library.entity.Book;
import br.com.library.service.BookService;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
@Controller
public class BookController {
    @Autowired
    BookService bookService;

    @RequestMapping("bookForm")
    public ModelAndView getForm(@ModelAttribute Book book) {
        return new ModelAndView("bookForm");
    }

    @RequestMapping(value="registerBook",method = RequestMethod.POST)
    public ModelAndView registerBook(@ModelAttribute Book book) {
        bookService.insert(book);
        return new ModelAndView("redirect:bookList");
    }

    @RequestMapping("bookList")
    public ModelAndView getBookList() {
        List bookList = bookService.getList();
        return new ModelAndView("bookList", "bookList", bookList);
    }

    @RequestMapping("deleteBook")
    public ModelAndView deleteBook(@RequestParam int id) {
        bookService.delete(id);
        return new ModelAndView("redirect:bookList");
    }

    @RequestMapping("bookEdit")
    public ModelAndView editBook(@RequestParam int id,
            @ModelAttribute Book book) {
        Book bookObject = bookService.getById(id);
        return new ModelAndView("bookEdit", "bookObject", bookObject);
    }

    @RequestMapping("updateBook")
    public ModelAndView updateBook(@ModelAttribute Book book) {
        bookService.update(book);
        return new ModelAndView("redirect:bookList");
    }
}
