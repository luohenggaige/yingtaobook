package cn.tushu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.service.ShareService;

@Controller
@RequestMapping("/share")
public class ShareController {
	
	@Autowired
	ShareService shareService;
	
	@RequestMapping("/toAddShare.do")
	public String toBookList(){
		return "share/addShare";
	}
	
	
	
}
