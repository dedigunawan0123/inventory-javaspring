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

import com.dedigunawan.domain.Supplier;
import com.dedigunawan.repositories.SupplierRepository;

@Controller
public class SupplierController {

	@Autowired
    SupplierRepository supplierRepo;

	// menampilkan semua list supplier
    @RequestMapping("/suppliers")
    public String home(Model model) {
         model.addAttribute("suppliers", supplierRepo.findAll());
         return "suppliers";
    }
    
    // menampilkan form add supplier
    @RequestMapping("/suppliers/add")
    public String showAddPage(Model model) {
    	model.addAttribute("supplier", new Supplier());
    	return "supplier";
    }
           
    // proses simpan supplier ke database dan redirect ke halaman list supplier
    @RequestMapping(value = "/suppliers/add", method = RequestMethod.POST)
    public String addSupplier(Model model, @Valid Supplier supplier, BindingResult result) {
    	if (result.hasErrors()) {
    		return "supplier";
    	}
    	
    	supplierRepo.save(supplier);
    	return "redirect:/suppliers";
    		
    }
    
    @RequestMapping(value="/suppliers/update", method = RequestMethod.GET)
    public String showEditPage(@RequestParam Integer id, ModelMap model) {
    	Supplier supplier = supplierRepo.findById(id).get();
    	model.put("supplier", supplier);
    	return "supplier";
    }
    
    @RequestMapping(value = "/suppliers/update", method = RequestMethod.POST)
    public String showEditPage(ModelMap model, @Valid Supplier supplier, BindingResult result) {
    	if (result.hasErrors()) {
    		return "supplier";
    	}
    	
    	supplierRepo.save(supplier);
    	return "redirect:/suppliers";
    }
    
    @RequestMapping(value = "/suppliers/delete", method = RequestMethod.GET)
    public String deleteUser(@RequestParam Integer id) {
    	supplierRepo.deleteById(id);
    	return "redirect:/suppliers";
    }
}
