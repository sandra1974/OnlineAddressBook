/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.springmvc.controller;

import com.springmvc.DAO.PersonDAO;
import com.springmvc.model.Person;
import java.time.LocalTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author sandra
 */
@Controller
public class PersonController {
    
    
      @RequestMapping(value = { "/"}, method = RequestMethod.GET)
	public ModelAndView welcomePage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("welcome");
		return model;
	}

	@RequestMapping(value = { "/home"}, method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("home");
		return model;
	}
	
	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public ModelAndView loginPage(@RequestParam(value = "error",required = false) String error,
	@RequestParam(value = "logout",	required = false) String logout) {
		
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username or password.");
		}

		if (logout != null) {
			model.addObject("message", "Logged out from Online Address Book successfully.");
		}

		model.setViewName("loginPage");
		return model;
	}
     
   @Autowired
    private PersonDAO personDAO;

   
   
   
   
    @RequestMapping(value="/search", method = RequestMethod.GET)
    public String search(Model model,@RequestParam("pattern") String pattern) {
        try {
            if (pattern == null) {
                model.addAttribute("persons", personDAO.getAll());
            } else {
                model.addAttribute("persons", personDAO.Search(pattern));
            }
        } catch (Exception ex) {

        }
        return "home";
    }

    //while edit query string value comes so pathVariable
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(Model model, @PathVariable("id") int id) {

        try {

            model.addAttribute("person", personDAO.getById(id));

        } catch (Exception ex) {

        }

        return "edit";
    }

    //while save form parameter comes(

    @RequestMapping(value = "/save")
    public String save(Person person) {
        try {
            if (person.getId() == 0) {
                personDAO.insert(person);
            } else {
                personDAO.update(person);
            }
        } catch (Exception ex) {

        }
        return "redirect:/home";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "addPerson";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id) {
        try {
            personDAO.delete(id);
        } catch (Exception ex) {

        }
        return "redirect:/home";
    }

    
    
}
