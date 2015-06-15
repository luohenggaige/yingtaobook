package cn.tushu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.Colltrade;
import cn.tushu.service.ColltradeService;

@Controller
@RequestMapping("/Colltrade")
public class CollController {
	
	@Autowired
	ColltradeService ColltradeService;
	
	@RequestMapping("/toCollTradeList.do")
	public String toCollTradeList(Model model){
//		List<Colltrade> list = ColltradeService.selectByAll();
//		model.addAttribute("ColltradeList", list);
		return "colltrade/colltradelist";
	}
	
	
}
