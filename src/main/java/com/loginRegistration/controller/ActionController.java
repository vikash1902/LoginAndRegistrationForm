package com.loginRegistration.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.loginRegistration.model.UserBean;
import com.loginRegistration.model.loginRegistrationBean;
import com.loginRegistration.service.LoginRegistrationService;

@Controller
public class ActionController {
	@Autowired
	private LoginRegistrationService loginRegistrationService;
	@Autowired
	private UserBean user;

	@GetMapping("/")
	public String home() {
		return "welcome";
	}

	@PostMapping("/reglog")
	public String renderPage(@ModelAttribute("reglog") loginRegistrationBean loginRegistration) {
		if (loginRegistration.getButton() == null) {
			return "welcome";
		} else if (loginRegistration.getButton().equalsIgnoreCase("registration")) {
			return "registration";
		} else if (loginRegistration.getButton().equalsIgnoreCase("login")) {
			return "login";
		} else if (loginRegistration.getButton().equalsIgnoreCase("home")) {
			return "welcome";
		}
		return "welcome";

	}

	@PostMapping("/registration")
	public ModelAndView registration(@ModelAttribute("registration") loginRegistrationBean loginRegistration,
			ModelAndView model) {
		if (loginRegistration.getButton().equalsIgnoreCase("logout")) {
			model.setViewName("welcome");
			return model;
		}
		if (!loginRegistration.getPassword().equals(loginRegistration.getRePassword())
				|| loginRegistration.getUserId().equals("") || loginRegistration.getPassword().equals("")
				|| loginRegistration.getEmail().equals("") || loginRegistration.getName().equals("")
				|| loginRegistration.getPhoneNo().equals("") || loginRegistration.getUserId() == null
				|| loginRegistration.getPassword() == null || loginRegistration.getEmail() == null
				|| loginRegistration.getName() == null || loginRegistration.getPhoneNo() == null) {
			model.setViewName("registration");
			return model;
		}
		loginRegistrationBean obj = loginRegistrationService.getRegistration(loginRegistration);
		if (obj == null) {
			model.setViewName("registration");
			return model;
		}
		model.addObject("userInfo", obj);
		model.setViewName("success");
		return model;
	}

	@PostMapping("/login")
	public ModelAndView login(@ModelAttribute("login") loginRegistrationBean loginRegistration, ModelAndView model,
			HttpSession session) {
		if (loginRegistration.getButton().equalsIgnoreCase("back")) {
			System.err.println(loginRegistration.getButton());
			model.setViewName("welcome");
			return model;
		} else if (loginRegistration.getUserId().equals("") || loginRegistration.getPassword().equals("")
				|| loginRegistration.getUserId() == null || loginRegistration.getPassword() == null) {
			model.setViewName("login");
			return model;
		}

		if (loginRegistration.getButton().equalsIgnoreCase("login")) {
			user.setUserID(loginRegistration.getUserId());
			user.setPassword(loginRegistration.getPassword());
			loginRegistrationBean role = loginRegistrationService.login(loginRegistration);
			if (role == null || role.getRole() == null || role.getRole().equals("")) {
				model.setViewName("login");
				return model;
			} else if (role.getRole().equalsIgnoreCase("user")) {
				session.setAttribute("user", user);
				model.addObject("userinfo", role);
				model.setViewName("userPage");
			} else if (role.getRole().equalsIgnoreCase("admin")) {
				session.setAttribute("user", user);
				model.addObject("userData", loginRegistrationService.getAllUser("USER", "A"));
				model.setViewName("adminPage");
			}
		} else {
			model.setViewName("welcome");
		}
		return model;
	}

	@PostMapping("/logout")
	public ModelAndView updateUser(@ModelAttribute("user") loginRegistrationBean loginRegistration, ModelAndView model,
			HttpSession session) {
		if (loginRegistration.getButton().equalsIgnoreCase("logout")) {

			if (session != null) {
				session.invalidate();
			}
			model.setViewName("welcome");
		}
		return model;
	}

	@PostMapping("/delete")
	public ModelAndView deleteUser(@ModelAttribute("delete") loginRegistrationBean loginRegistration,
			ModelAndView model, HttpSession session) {
		if (loginRegistration.getButton() == null) {
			if (session.getAttribute("user") == null) {
				model.setViewName("welcome");
				return model;
			}

			loginRegistrationService.deleteUser(loginRegistration);
			model.addObject("userData", loginRegistrationService.getAllUser("USER", "A"));
			model.setViewName("adminPage");
			return model;
		} else if (loginRegistration.getButton().equalsIgnoreCase("logout")) {
			if (session != null) {
				session.invalidate();
			}
			model.setViewName("welcome");
			return model;
		}
		model.setViewName("welcome");
		return model;

	}
}
