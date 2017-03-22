package com.epam.hostel.service;

import com.epam.hostel.dao.exception.DAOException;
import com.epam.hostel.model.user.User;
import com.epam.hostel.service.exception.InvalidDataException;
import com.epam.hostel.service.exception.NoEntityException;
import com.epam.hostel.service.exception.ServiceException;

import java.util.List;

public interface IUserService {
    List<User> findAll() throws ServiceException;

    User signIn(User user) throws ServiceException, NoEntityException, InvalidDataException;

    long signUp(User user) throws ServiceException, DAOException, InvalidDataException;

   /* long update(User user) throws ServiceException;*/
}
