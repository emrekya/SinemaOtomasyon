package com.mvc.sinema;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import properties.Kullanici;
import utilsuser.DB;

@Controller
public class KayitOlController {
	@RequestMapping(value = "/kayitol", method = RequestMethod.GET)
	public String kayitol(Locale locale, Model model) {

		return "user/kayitol";
	}

	@RequestMapping(value = "/yenikullanicikayit", method = RequestMethod.POST)
	public String yenikullanicikayit(Model model, Kullanici kullanici) {
		String md5Sifre = "";
		try {
			MessageDigest md5;
			md5 = MessageDigest.getInstance("MD5");
			md5.update(StandardCharsets.UTF_8.encode(kullanici.getkSifre()));
			md5Sifre = String.format("%032x", new BigInteger(1, md5.digest()));
		} catch (NoSuchAlgorithmException e) {
			System.err.println(e);
		}

		try {
			String query = "call yenikullanicikayit(?,?,?,?,?,?);";
			DB db = new DB();
			PreparedStatement preparedStatement = db.preBaglan(query);
			preparedStatement.setString(1, kullanici.getkAdi());
			preparedStatement.setString(2, kullanici.getkSoyadi());
			preparedStatement.setString(3, kullanici.getkEmail());
			preparedStatement.setString(4, kullanici.getkTelefon());
			preparedStatement.setString(5, kullanici.getkDogumTarihi());
			preparedStatement.setString(6, md5Sifre);
			preparedStatement.executeQuery();
		} catch (SQLException e) {
			System.err.println("Vt Kullanici Kayit Hatasý : " + e);
		}

		return "redirect:kayitol";
	}
}
