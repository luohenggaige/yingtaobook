package cn.tushu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.Colltrade;
import cn.tushu.service.ColltradeService;

//藏书交易
@Controller
@RequestMapping("/Colltrade")
public class CollController {
	
	@Autowired
	ColltradeService ColltradeService;
	
	@RequestMapping("/CollTradeList.do")
	public String toCollTradeList(Model model){
		List<Colltrade> list = ColltradeService.selectByAll();
		model.addAttribute("ctList", list);
		return "colltrade/colltradelist";
	}
	
	@RequestMapping("/myCollTrade.do")
	public String myCollTrade(Model model,Integer uid){
		List<Colltrade> list = ColltradeService.selectByAll();
		model.addAttribute("mctList", list);
		return "colltrade/mycolltrade";
	}
	
	@RequestMapping("/toAddColl.do")
	public String toAddColl(){
		return "colltrade/addcoll";
	}
	
	@RequestMapping("/AddColl.do")
	public String AddColl(Model model,Colltrade colltrade){
		ColltradeService.insert(colltrade);
		return "redirect:myCollTrade.do";
	}
	
	
}
