package quanlikhachsan.com.quanlikhachsan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import quanlikhachsan.com.quanlikhachsan.entities.Dichvu;
import quanlikhachsan.com.quanlikhachsan.service.DichvuService;

@Controller
public class DichvuController {
	@Autowired
	private DichvuService dichvuService;

	@RequestMapping(value = { "/", "/dichvu-list" })
	public String listDichvu(Model model) {
		model.addAttribute("listDichvu", dichvuService.findAll());
		return "dichvu-list";
	}

	@RequestMapping("/dichvu-save")
	public String insertDichvu(Model model) {
		model.addAttribute("dichvu", new Dichvu());
		return "dichvu-save";
	}

	@RequestMapping("/saveDichvu")
	public String doSaveDichvusd(@ModelAttribute("Dichvu") Dichvu dichvu, 
			Model model) {
		dichvuService.save(dichvu);
		model.addAttribute("listDichvu", dichvuService.findAll());
		return "dichvu-list";
	}
}
