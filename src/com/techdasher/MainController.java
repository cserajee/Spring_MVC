package com.techdasher;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.techdasher.model.User;

@Controller
public class MainController {

	@GetMapping("/")
	public ModelAndView Home() {
		ModelAndView model = new ModelAndView("index");
		User user = new User();
		model.addObject("message", "Welcome Page!");
		model.addObject("user", user);
		
		Map<String,String> genderMap = new HashMap<>();
		genderMap.put("male", "Male");
		genderMap.put("female", "Female");
		model.addObject("genderMap", genderMap);
		
		Map<String,String> countryMap = new HashMap<>();
		countryMap.put("india", "India");
		countryMap.put("usa", "USA");
		countryMap.put("uk", "UK");
		countryMap.put("canada", "Canada");
		countryMap.put("china", "China");
		countryMap.put("japan", "Japan");
		model.addObject("countryMap", countryMap);
		return model;
	}
	
	@PostMapping("/displayInfo")
	public ModelAndView displayInfo(@ModelAttribute User user) {
		ModelAndView model = new ModelAndView("displayinfo");
		model.addObject("user", user);
		return model;
	}
}
