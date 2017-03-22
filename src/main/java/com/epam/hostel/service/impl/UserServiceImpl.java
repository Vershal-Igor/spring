package com.epam.hostel.service.impl;


import com.epam.hostel.dao.UserDAO;
import com.epam.hostel.dao.exception.DAOException;

import com.epam.hostel.model.user.User;
import com.epam.hostel.service.IUserService;
import com.epam.hostel.service.exception.DuplicateEntityException;
import com.epam.hostel.service.exception.InvalidDataException;
import com.epam.hostel.service.exception.NoEntityException;
import com.epam.hostel.service.exception.ServiceException;
import com.epam.hostel.validator.IUserValidator;
import com.epam.hostel.validator.impl.UserValidator;
import org.apache.log4j.Logger;
import org.apache.commons.codec.digest.DigestUtils;
//вроде есть и import org.springframework.util.DigestUtils;
// но не хочет подключаться md5Hex

import java.util.List;


public class UserServiceImpl implements IUserService {
    static Logger log = Logger.getLogger(UserServiceImpl.class);

    private UserDAO userDAO;
    private IUserValidator validator = UserValidator.getInstance();

    private static final int ZERO_RECORDS_COUNT = 0;

    @Override
    public List<User> findAll() throws ServiceException {
        List<User> users = null;
        try {
            users = userDAO.findAll();
        } catch (DAOException e) {
            throw new ServiceException(e);
        }
        return users;
    }

    @Override
    public User signIn(User user) throws ServiceException, NoEntityException, InvalidDataException {
        if (validator.validateLogPass(user)) {
            try {
                String password = user.getPassword();
                user.setPassword(DigestUtils.md5Hex(password));

                int recordCount = userDAO.checkUser(user);
                if (recordCount == ZERO_RECORDS_COUNT) {
                    throw new NoEntityException("there is no entity with such data");
                } else {
                    return userDAO.getUserInf(user);
                }
            } catch (DAOException e) {
                throw new ServiceException("error while sign in user", e);
            }
        } else {
            throw new InvalidDataException("invalid data");
        }
    }

    @Override
    public long signUp(User user) throws ServiceException, DAOException, InvalidDataException {
        if (validator.validate(user)) {
            try {
                String password = user.getPassword();
                user.setPassword(DigestUtils.md5Hex(password));

                int recordsCount = userDAO.checkUser(user);
                if (recordsCount != ZERO_RECORDS_COUNT) {
                    throw new DuplicateEntityException("there is a record with such data");
                }
                else {
                    return userDAO.add(user);
                }
            } catch (DAOException e) {
                throw new ServiceException("error while sign up user", e);
            }
        }
        else {
            throw new InvalidDataException("invalid user data");
        }
    }



    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

}

