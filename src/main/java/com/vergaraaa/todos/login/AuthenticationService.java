package com.vergaraaa.todos.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    public boolean authenticate(String username, String password) {
        boolean isValidUsername = username.equalsIgnoreCase("vergara");
        boolean isValidPassword = password.equalsIgnoreCase("123456");

        return isValidUsername && isValidPassword;
    }
}
