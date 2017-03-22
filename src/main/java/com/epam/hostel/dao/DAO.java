package com.epam.hostel.dao;

import com.epam.hostel.dao.exception.DAOException;
import com.epam.hostel.model.entity.Entity;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.sql.DataSource;

public abstract class DAO<T extends Entity> {
    static Logger log = Logger.getLogger(DAO.class);

    protected JdbcTemplate jdbcTemplate;

    protected DAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public abstract List<T> findAll() throws DAOException;

    public abstract long add(T entity) throws DAOException;

    /*public abstract long create(T entity) throws DAOException;

    public abstract boolean delete(T entity) throws DAOException;*/


    public void close(Statement statement) {
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                log.error("Can't close statement" + e);
            }
        }
    }
}
