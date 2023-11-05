package com.vergaraaa.todos.login;

// import org.slf4j.Logger;
// import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("username")
public class LoginController {
    // private Logger logger = LoggerFactory.getLogger(getClass());

    private AuthenticationService authenticationService;

    public LoginController(AuthenticationService authenticationService) {
        super();
        this.authenticationService = authenticationService;
    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String goToLoginPage() {

        return "login";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String goToWelcomePage(@RequestParam String username, @RequestParam String password, ModelMap model) {
        // Authentication
        // username - vergara
        // password - 123456

        if (authenticationService.authenticate(username, password)) {
            model.put("username", username);

            return "welcome";
        }

        model.put("errorMessage", "Invalid credentials! Please try again");

        return "login";

    }
}
