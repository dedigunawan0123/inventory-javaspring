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

import com.dedigunawan.domain.Barang;
import com.dedigunawan.repositories.BarangRepository;

@Controller
public class BarangController {
	@Autowired
    BarangRepository barangRepo;

	// menampilkan semua list barangs
    @RequestMapping("/barangs")
    public String home(Model model) {
         model.addAttribute("barangs", barangRepo.findAll());
         return "barangs";
    }
    
    // menampilkan form add barang
    @RequestMapping("/barangs/add")
    public String showAddPage(Model model) {
    	model.addAttribute("barang", new Barang());
    	return "barang";
    }
           
    // proses simpan barang ke database dan redirect ke halaman list barang
    @RequestMapping(value = "/barangs/add", method = RequestMethod.POST)
    public String addBarang(Model model, @Valid Barang barang, BindingResult result) {
    	if (result.hasErrors()) {
    		return "barang";
    	}
    	
    	barangRepo.save(barang);
    	return "redirect:/barangs";
    		
    }
    
    @RequestMapping(value="/barangs/update", method = RequestMethod.GET)
    public String showEditPage(@RequestParam Integer id, ModelMap model) {
    	Barang barang = barangRepo.findById(id).get();
    	model.put("barang", barang);
    	return "barang";
    }
    
    @RequestMapping(value = "/barangs/update", method = RequestMethod.POST)
    public String showEditPage(ModelMap model, @Valid Barang barang, BindingResult result) {
    	if (result.hasErrors()) {
    		return "barang";
    	}
    	
    	barangRepo.save(barang);
    	return "redirect:/barangs";
    }
    
    @RequestMapping(value = "/barangs/delete", method = RequestMethod.GET)
    public String deleteBarang(@RequestParam Integer id) {
    	barangRepo.deleteById(id);
    	return "redirect:/barangs";
    }
}
