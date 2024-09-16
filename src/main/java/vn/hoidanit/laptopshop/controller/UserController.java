package vn.hoidanit.laptopshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/admin/user")

    public String getAdminUserPage(Model model) {
        List<User> users = this.userService.getAllUser();
        model.addAttribute("users1", users);

        return "admin/user/table_user";
    }

    @RequestMapping("/admin/user/{id}")

    public String getDetailUserPage(Model model, @PathVariable long id) {
        User userById = this.userService.handleDetailUserByID(id);
        model.addAttribute("userById", userById);
        return "admin/user/show";
    }

    @RequestMapping("/admin/user/update/{id}")

    public String getUpdateUserPage(Model model, @PathVariable long id) {
        User currentUser = this.userService.getUserById(id);
        model.addAttribute("newUser", currentUser);
        return "admin/user/update";
    }

    @RequestMapping(value = "/admin/user/update", method = RequestMethod.POST)
    public String getUpdateUser(Model model, @ModelAttribute("newUser") User hoidanit) {
        User currenUser = this.userService.getUserById(hoidanit.getId());
        this.userService.handleSaveUser(hoidanit);
        return "redirect:/admin/user";
    }

    @RequestMapping("/")

    public String getHomePage(Model model) {

        return "homePage";
    }

    @RequestMapping("/admin/user/create")

    public String getUserCreatePage(Model model) {
        model.addAttribute("newUser", new User());

        return "admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String CreategetPage(Model model, @ModelAttribute("newUser") User hoidanit) {
        this.userService.handleSaveUser(hoidanit);
        return "redirect:/admin/user";
    }
}
