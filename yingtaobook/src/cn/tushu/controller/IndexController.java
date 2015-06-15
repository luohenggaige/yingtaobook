package cn.tushu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.Share;
import cn.tushu.service.ShareService;
import cn.tushu.service.UserService;

@Controller
@RequestMapping("/index")
public class IndexController {
	
	@Autowired
	UserService userService;
	@Autowired
	ShareService shareService;
	
	@RequestMapping("/toIndex.do")
	public String toIndex(){
		return "index/index";
	}
	
	@RequestMapping("/toTop.do")
	public String toTop(){
		return "index/top";
	}
	
	@RequestMapping("/toRight.do")
	public String toRright(){
		return "index/right";
	}
	
	@RequestMapping("/toBody.do")
	public String toBody(Model model){
		List<Share> list = shareService.selectByAll();
		model.addAttribute("shareList", list);
		List<Share> heatList = shareService.selectByAllHeat();
		model.addAttribute("heatList", heatList);
		return "index/body";
		
		
	}
	
	@RequestMapping("/toAdminIndex.do")
	public String toAdminIndex(){
		return "adminjsp/adminIndex";
	}
	
	@RequestMapping("/toAdminTop.do")
	public String toAdminTop(){
		return "adminjsp/adminTop";
	}
	
}
