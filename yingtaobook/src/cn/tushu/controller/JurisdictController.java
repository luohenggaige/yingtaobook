package cn.tushu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.Jurisdict;
import cn.tushu.service.JurisdictService;

@Controller
@RequestMapping("/juri")
public class JurisdictController {
	
	@Autowired
	JurisdictService jurisdictService;
	
	@RequestMapping("/listJuri.do")
	public String listJurisdict(Model model){
		List<Jurisdict> list = jurisdictService.SelectAllJurisdict();
		model.addAttribute("listJurisdict", list);
		return "Jurisdict/listJurisdict";
	}
	
	
}
