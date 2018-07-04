/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.DAO;

import com.springmvc.model.Person;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author sandra
 */
public interface PersonDAO {
    
    public int insert(Person person) throws SQLException, ClassNotFoundException;
    public int delete(int id) throws SQLException, ClassNotFoundException;
    public int update(Person person) throws SQLException, ClassNotFoundException;
    public List<Person>getAll() throws SQLException, ClassNotFoundException;
    public Person getById(int id) throws SQLException, ClassNotFoundException;
        public List<Person>Search(String pattern) throws SQLException, ClassNotFoundException;
    
    
}
