package com.epam.hostel.validator.impl;



import com.epam.hostel.model.user.User;
import com.epam.hostel.validator.IUserValidator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;



public class UserValidator implements IUserValidator {
    private Pattern pattern;
    private Matcher matcher;

    private static final String LETTER_VALIDATION = "^[a-zA-Zа-яА-Я]{3,25}$";
    private static final String LETTERS_NUMBERS_VALIDATION = "^[a-zA-Zа-яА-Я\\d]{3,25}$";
    private static final String LOGIN_VALIDATION = "[\\wА-Яа-я1-9]{4,14}";
    /*private static final String EMAIL_VALIDATION = "^[a-zA-Z]{3,18}@[a-z]{2,5}\\.[a-z]{2,3}$";*/

    private UserValidator() {}

    private static class SingletonHolder {
        private static final UserValidator INSTANCE = new UserValidator();
    }

    public static UserValidator getInstance() {
        return SingletonHolder.INSTANCE;
    }


    @Override
    public boolean validate(User user) {
        return lettersValidation(user.getName()) &&
                lettersValidation(user.getSurname()) &&
                emailValidation(user.getLogin()) &&
                lettersNumbersValidation(user.getLogin()) &&
                lettersNumbersValidation(user.getPassword());
    }


    @Override
    public boolean validateLogPass(User user) {
            return lettersValidation(user.getLogin()) &&
                    lettersNumbersValidation(user.getPassword());
    }


    @Override
    public boolean validateNameSurnameLogin(User user) {
        return lettersValidation(user.getName()) &&
                lettersValidation(user.getSurname()) &&
                emailValidation(user.getLogin());
    }

    private boolean lettersNumbersValidation(String string) {
        pattern = Pattern.compile(LETTERS_NUMBERS_VALIDATION);
        matcher = pattern.matcher(string);
        return matcher.matches();
    }

    private boolean lettersValidation(String string) {
        pattern = Pattern.compile(LETTER_VALIDATION);
        matcher = pattern.matcher(string);
        return matcher.matches();
    }

    private boolean emailValidation(String email) {
        pattern = Pattern.compile(LOGIN_VALIDATION);
        matcher = pattern.matcher(email);
        return matcher.matches();
    }
}
