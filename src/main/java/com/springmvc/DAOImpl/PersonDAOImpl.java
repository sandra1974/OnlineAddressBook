/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.DAOImpl;

import com.springmvc.DAO.PersonDAO;
import com.springmvc.model.Person;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
/**
 *
 * @author sandra
 */
public class PersonDAOImpl implements PersonDAO{
    
    
    private JdbcTemplate jdbcTemplate;    //to use jdbc in spring framework we need jdbctemplete object
    
  
public PersonDAOImpl(DataSource dataSource) {
    jdbcTemplate = new JdbcTemplate(dataSource);
}

    
    
    @Override
    public int insert(Person person) throws SQLException, ClassNotFoundException {
       
        String sql="INSERT into person(name, surname, address, phone, mobile, email, notes) VALUES(?,?,?,?,?,?,?)";
       return  jdbcTemplate.update(sql, new Object[]{person.getName(),person.getSurname(),person.getAddress(),person.getPhone(), person.getMobile(), person.getEmail(), person.getNotes()});
    }

    @Override
    public List<Person> getAll() throws SQLException, ClassNotFoundException {
        String query="SELECT * from person";
        return jdbcTemplate.query(query, new RowMapper<Person>() {

            @Override
            public Person mapRow(ResultSet rs, int i) throws SQLException {
              Person person=new Person();
              
              person.setId(rs.getInt("id"));
              person.setName(rs.getString("name"));
              person.setSurname(rs.getString("surname"));
              person.setAddress(rs.getString("address"));
              person.setPhone(rs.getString("phone"));
              person.setMobile(rs.getString("mobile"));
              person.setEmail(rs.getString("email"));
              person.setNotes(rs.getString("notes"));
              
              
              return person;
                      
            }
        }
        );
        
    }

    @Override
    public Person getById(int id) throws SQLException, ClassNotFoundException {
      
        String query="SELECT * from  person where id=?";
        return jdbcTemplate.queryForObject(query, new Object[]{id}, new RowMapper<Person>() {

            @Override
            public Person mapRow(ResultSet rs, int i) throws SQLException {
              Person person=new Person();
              
              person.setId(rs.getInt("id"));
              person.setName(rs.getString("name"));
               person.setSurname(rs.getString("surname"));
               person.setAddress(rs.getString("address"));
              person.setPhone(rs.getString("phone"));
               person.setMobile(rs.getString("mobile"));
              person.setEmail(rs.getString("email"));
              person.setNotes(rs.getString("notes"));
              
              
              return  person;
                      
            } 

        }
              );
                }

    @Override
    public List<Person> Search(String pattern) throws SQLException, ClassNotFoundException {
       
        String query="SELECT * from person where name LIKE ?";
        return jdbcTemplate.query(query, new Object[]{"%"+pattern+"%"}, new RowMapper<Person>() {

            @Override
            public Person mapRow(ResultSet rs, int i) throws SQLException {
               Person person=new Person();
              
               person.setId(rs.getInt("id"));
              person.setName(rs.getString("name"));
               person.setSurname(rs.getString("surname"));
               person.setAddress(rs.getString("address"));
              person.setPhone(rs.getString("phone"));
               person.setMobile(rs.getString("mobile"));
              person.setEmail(rs.getString("email"));
              person.setNotes(rs.getString("notes"));
              
              
              return person;
              
            }
        });
        
    }

    @Override
    public int delete(int id) throws SQLException, ClassNotFoundException {
       String query="DELETE from person where id=?";
       
       return jdbcTemplate.update(query,new Object[]{id});
           
    }

    @Override
    public int update(Person person) throws SQLException, ClassNotFoundException {
               String sql="UPDATE  person SET name=?,surname=?,address=?,phone=?, mobile=?, email=?, notes=? where id=?";
       return  jdbcTemplate.update(sql, new Object[]{person.getName(),person.getSurname(),person.getAddress(),person.getPhone(),person.getMobile(), person.getEmail(), person.getNotes(), person.getId()});
    }
    
    
    
    
    
}
