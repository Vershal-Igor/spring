package com.epam.hostel.controller;

import com.epam.hostel.model.user.Role;
import com.epam.hostel.service.exception.InvalidDataException;
import com.epam.hostel.service.exception.NoEntityException;
import com.epam.hostel.service.exception.ServiceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.epam.hostel.model.user.User;
import com.epam.hostel.service.impl.UserServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@SessionAttributes("person")
public class MainController {

    private static final String CLIENT_PAGE = "WEB-INF/view/client/client.jsp";
    private static final String ADMIN_PAGE = "WEB-INF/view/admin/adminUsers.jsp";
    private static final String LOGIN = "login";
    private static final String PASSWORD = "password";


    @Autowired
    private UserServiceImpl userService;

    /*First method on start*/
    /*HandlerMapping(response = controller)*/

    //Проверка БД с помощью findAll()
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView main() throws ServiceException {
        ModelAndView modelAndView = new ModelAndView();
        userService.findAll();
        modelAndView.addObject("userJSP", new User());
        modelAndView.setViewName("startPage");
        return modelAndView; /*Возвращает ModelAndView в DispatcherServlet*/
    }

//ВХОД ПОЛЬЗОВАТЕЛЯ
    @RequestMapping(value = "/sign-in")
    public ModelAndView checkUser(@ModelAttribute("userJSP") User user) throws NoEntityException,
            InvalidDataException, ServiceException {

        User authUser = userService.signIn(user);

        ModelAndView modelAndView = new ModelAndView();

        authUser.setLogin(LOGIN);   // как взять параметр с запроса user.setLogin(request.getParameter(LOGIN));
        authUser.setPassword(PASSWORD);  //user.setPassword(request.getParameter(PASSWORD));

        //имя представления, куда нужно будет перейти
        if (authUser.getRole().equals(Role.CLIENT)) {  //как настроить сессию? @SessionAttributes("person")
            modelAndView.setViewName("client/client");
            modelAndView.addObject("userJSP", user);
            return modelAndView;
        } else  {
            modelAndView.setViewName("admin/adminUsers");
            modelAndView.addObject("userJSP", user);
            return modelAndView;
        }
    }

    @RequestMapping(value = "/rooms")
    public ModelAndView adminRooms(@ModelAttribute("userJSP") User user) {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("admin/adminRooms");

        modelAndView.addObject("userJSP", user);

        return modelAndView;
    }

    @RequestMapping(value = "/orders")
    public ModelAndView adminOrders(@ModelAttribute("userJSP") User user) {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("admin/adminOrders");

        modelAndView.addObject("userJSP", user);

        return modelAndView;
    }

    @RequestMapping(value = "/check-out")
    public ModelAndView checkOut(@ModelAttribute("userJSP") User user) {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("payment");

        modelAndView.addObject("userJSP", user);

        return modelAndView;
    }

    @RequestMapping(value = "/client-account")
    public ModelAndView client(@ModelAttribute("userJSP") User user) {
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("client/client");

        modelAndView.addObject("userJSP", user);

        return modelAndView;
    }
}
