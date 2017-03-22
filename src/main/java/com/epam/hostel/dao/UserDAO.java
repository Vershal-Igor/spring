package com.epam.hostel.dao;


import com.epam.hostel.dao.exception.DAOException;
import com.epam.hostel.model.user.Role;
import com.epam.hostel.model.user.User;
import org.apache.commons.dbcp.BasicDataSource;
import org.apache.log4j.Logger;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;


public class UserDAO extends DAO<User> {
    public static final String SELECT_ALL_USERS = "SELECT user.id, user.name, user.surname, " +
            "user.login, user.password, user.status FROM user WHERE user.role=1";
    public static final String INSERT_USER = "INSERT INTO user (name, surname, login, password) " +
            "VALUES (?, ?, ?, ?)";
    public static final String SELECT_USER_INF = "SELECT user.id, user.role FROM user " +
            "WHERE login=? AND password=?;";
    private static final String CHECK_USER = "SELECT EXISTS(SELECT * FROM user WHERE login=? AND password=?);";
    private static final String UPDATE = "UPDATE user SET user.name=?, user.surname=?, user.login=? WHERE id=?;";
    private static final String DELETE_USER = "DELETE FROM user WHERE id=?;";
    public static final String SET_BAN = "UPDATE user SET status = 0 WHERE user.id = ?";
    public static final int IS_BANNED = 0;

    private BasicDataSource dataSource;
    static Logger log = Logger.getLogger(UserDAO.class);

    public UserDAO(DataSource dataSource) {
        super(dataSource);
    }


    @Override
    public List<User> findAll() throws DAOException {
        List<User> users = new ArrayList<>();
        Statement statement = null;
        try {
            statement = jdbcTemplate.getDataSource().getConnection().createStatement();
            ResultSet resultSet;
            resultSet = statement.executeQuery(SELECT_ALL_USERS);
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getLong(1));
                user.setName(resultSet.getString(2));
                user.setSurname(resultSet.getString(3));
                users.add(user);
            }
        } catch (SQLException e) {
            throw new DAOException(e);
        } finally {
            close(statement);
        }
        return users;
    }

    @Override
    public long add(User user) throws DAOException {
        PreparedStatement statement = null;
        try
        {
            statement = jdbcTemplate.getDataSource().getConnection().prepareStatement(INSERT_USER);
            statement.setString(1, user.getName());
            statement.setString(2, user.getSurname());
            statement.setString(3, user.getLogin());
            statement.setString(4, user.getPassword());

            statement.executeUpdate();

            ResultSet resultSet = statement.getGeneratedKeys();
            resultSet.next();

            return resultSet.getLong(1);
        } catch (SQLException e) {
            throw new DAOException("some sql exception", e);
        }
    }

    public User getUserInf(User user) throws DAOException {
        User infUser = null;
        PreparedStatement statement = null;
        ResultSet resultSet;
        try {
            statement = jdbcTemplate.getDataSource().getConnection().prepareStatement(SELECT_USER_INF);
            statement.setString(1, user.getLogin());
            statement.setString(2, user.getPassword());

            resultSet = statement.executeQuery();
            resultSet.next();

            infUser = new User();
            infUser.setId(resultSet.getLong(1));
            infUser.setRole(Role.valueOf(resultSet.getString(2).toUpperCase()));

            return infUser;
        } catch (SQLException e) {
            throw new DAOException("some sql exception", e);
        }
    }

    public int checkUser(User user) throws DAOException {
        PreparedStatement statement = null;
        ResultSet resultSet;
        try {
            statement = jdbcTemplate.getDataSource().getConnection().prepareStatement(CHECK_USER);

            statement.setString(1, user.getLogin());
            statement.setString(2, user.getPassword());

            resultSet = statement.executeQuery();
            resultSet.next();

            return resultSet.getInt(1);
        } catch (SQLException e) {
            throw new DAOException("some sql exception", e);
        }
    }

    public void setDataSource(BasicDataSource dataSource) {
        this.dataSource = dataSource;
    }

    public BasicDataSource getDataSource() {
        return dataSource;
    }
}
