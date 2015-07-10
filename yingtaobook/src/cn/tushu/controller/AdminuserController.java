package cn.tushu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.Category;
import cn.tushu.model.Adminuser;
import cn.tushu.model.User;
import cn.tushu.service.CategoryService;
import cn.tushu.service.AdminuserService;

@Controller
@RequestMapping("/adminIndex")
public class AdminuserController {
	
	@Autowired
	AdminuserService adminuserService;
	
	@RequestMapping("/list.do")
	public String list(Model model){
		List<Adminuser> list = adminuserService.SelectAllAdminuser();
		model.addAttribute("list", list);
		return "adminuser/list";
	}
	
	
}
