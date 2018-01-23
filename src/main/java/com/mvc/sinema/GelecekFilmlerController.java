package com.mvc.sinema;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GelecekFilmlerController {
		@RequestMapping(value = "/gelecekfilmler", method = RequestMethod.GET)
		public String gelecekfilmler(Locale locale, Model model) {
			
			return "user/gelecekfilmler";
		}
}
