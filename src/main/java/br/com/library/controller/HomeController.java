package br.com.library.controller;

import br.com.library.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
@Controller
public class HomeController {

    @RequestMapping("home")
    public ModelAndView getForm(@ModelAttribute User user) {
        return new ModelAndView("home");
    }

}
