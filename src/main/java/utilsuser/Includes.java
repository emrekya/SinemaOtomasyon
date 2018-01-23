package utilsuser;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Includes {

	// css dosyalar�n�n oldu�u b�l�m
	@RequestMapping(value = "/css", method = RequestMethod.GET)
	public String cssCagir() {
		return "incuser/css";
	}

	// js dosyalar�n�n oldu�u b�l�m
	@RequestMapping(value = "/js", method = RequestMethod.GET)
	public String jsCagir() {
		return "incuser/js";
	}

	// header dosyalar�n�n oldu�u b�l�m
	@RequestMapping(value = "header", method = RequestMethod.GET)
	public String headerCagir() {
		return "incuser/header";
	}

	// menu dosyalar�n�n oldu�u b�l�m
	@RequestMapping(value = "menu", method = RequestMethod.GET)
	public String menuCagir() {
		return "inc/menu";
	}

	// footer dosyalar�n�n oldu�u b�l�m
	@RequestMapping(value = "footer", method = RequestMethod.GET)
	public String footerCagir() {
		return "incuser/footer";
	}
}
