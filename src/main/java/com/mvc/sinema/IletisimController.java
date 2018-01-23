package com.mvc.sinema;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IletisimController {
	@RequestMapping(value = "/iletisim", method = RequestMethod.GET)
	public String iletisim(Locale locale, Model model) {
		
		return "user/iletisim";
	}
}
