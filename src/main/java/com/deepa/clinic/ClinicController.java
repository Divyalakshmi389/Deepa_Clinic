package com.deepa.clinic;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ClinicController {
	
	 @Autowired
	    private ClinicService service;

	    @GetMapping("/")
	    public String viewHomePage(Model model) {
	        List<clinic> listclinic = service.listAll();
	        model.addAttribute("listclinic", listclinic);
	        return "index";
	    }

	    @GetMapping("/new")
	    public String add(Model model) {
	        model.addAttribute("clinic", new clinic());
	        return "new";
	    }

	    @RequestMapping(value = "/save", method = RequestMethod.POST)
	    public String saveClinic(@ModelAttribute("clinic") clinic std) {
	        service.save(std);
	        return "redirect:/";
	    }
 
	    @RequestMapping("/edit/{id}")
	    public ModelAndView showEditPatientPage(@PathVariable(name = "id") Long id) {
	        ModelAndView mav = new ModelAndView("new");
	        clinic std = service.get(id);
	        mav.addObject("clinic", std);
	        return mav;
	    }
	    
	    @RequestMapping("/delete/{id}")
	    public String deletePatient(@PathVariable(name = "id") Long id) {
	        service.delete(id);
	        return "redirect:/";
	    }
}