package br.com.library.controller;

import br.com.library.entity.User;
import br.com.library.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Daniel Hideki
 * @since 17/08/2014
 */
@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("userForm")
    public ModelAndView getForm(@ModelAttribute User user) {
        return new ModelAndView("userForm");
    }

    @RequestMapping("register")
    public ModelAndView registerUser(@ModelAttribute User user) {
        userService.insert(user);
        return new ModelAndView("redirect:userList");
    }

    @RequestMapping("userList")
    public ModelAndView getList() {
        List userList = userService.getList();
        return new ModelAndView("userList", "userList", userList);
    }

    @RequestMapping("userDelete")
    public ModelAndView deleteUser(@RequestParam int id) {
        userService.delete(id);
        return new ModelAndView("redirect:userList");
    }

    @RequestMapping("userEdit")
    public ModelAndView editUser(@RequestParam int id,
            @ModelAttribute User user) {
        User userObject = userService.getById(id);
        return new ModelAndView("userEdit", "userObject", userObject);
    }

    @RequestMapping("userUpdate")
    public ModelAndView updateUser(@ModelAttribute User user) {
        userService.update(user);
        return new ModelAndView("redirect:userList");
    }
}
