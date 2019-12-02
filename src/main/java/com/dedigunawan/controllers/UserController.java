package com.dedigunawan.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.dedigunawan.domain.User;
import com.dedigunawan.repositories.UserRepository;

@Controller
public class UserController {
	@Autowired
    UserRepository userRepo;

	// menampilkan semua list users
    @RequestMapping("/users")
    public String home(Model model) {
         model.addAttribute("users", userRepo.findAll());
         return "users";
    }
    
    // menampilkan form add user
    @RequestMapping("/users/add")
    public String showAddPage(Model model) {
    	model.addAttribute("user", new User());
    	return "user";
    }
           
    // proses simpan user ke database dan redirect ke halaman list user
    @RequestMapping(value = "/users/add", method = RequestMethod.POST)
    public String addUser(Model model, @Valid User user, BindingResult result) {
    	if (result.hasErrors()) {
    		return "user";
    	}
    	
    	userRepo.save(user);
    	return "redirect:/users";
    		
    }
    
    @RequestMapping(value="/users/update", method = RequestMethod.GET)
    public String showEditPage(@RequestParam Integer id, ModelMap model) {
    	User user = userRepo.findById(id).get();
    	model.put("user", user);
    	return "user";
    }
    
    @RequestMapping(value = "/users/update", method = RequestMethod.POST)
    public String showEditPage(ModelMap model, @Valid User user, BindingResult result) {
    	if (result.hasErrors()) {
    		return "user";
    	}
    	
    	userRepo.save(user);
    	return "redirect:/users";
    }
    
    @RequestMapping(value = "/users/delete", method = RequestMethod.GET)
    public String deleteUser(@RequestParam Integer id) {
    	userRepo.deleteById(id);
    	return "redirect:/users";
    }
}
