package cn.tushu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.Category;
import cn.tushu.service.CategoryService;

@Controller
@RequestMapping("/Category")
public class CategoryController {
	  
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/selectByAll.do")
	public String selectByAll(Model model){
		List<Category> cateList = categoryService.selectByAll();
		model.addAttribute("cateList", cateList);
		return "conCategory/CategoryList";
	}
	
}
