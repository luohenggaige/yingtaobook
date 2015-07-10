package cn.tushu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.Category;
import cn.tushu.model.Share;
import cn.tushu.service.CategoryService;
import cn.tushu.service.ShareService;

@Controller
@RequestMapping("/share")
public class ShareController {
	
	@Autowired
	ShareService shareService;
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/myListShare.do")
	public String toListShare(Model model,Integer userid){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("userid", userid);
		List<Share> list = shareService.selectByAll(map);
		model.addAttribute("shareList", list);
		return "share/myListShare";
	}
	
	@RequestMapping("/toAddShare.do")
	public String toAddShare(Model model){
		List<Category> cateList = categoryService.selectByAll();
		model.addAttribute("cateList", cateList);
		return "share/addShare";
	}
	
	@RequestMapping("/addShare.do")
	public String addShare(Share share){
		shareService.insert(share);
		return "redirect:toListShare.do";
	}
	
	@RequestMapping("/SelectAllShare.do")
	public String SelectAllShare(Model model){
		List<Share> shareList = shareService.SelectAllShare();
		List<Category> cateList = categoryService.selectByAll();
		model.addAttribute("shareList", shareList);
		model.addAttribute("cateList", cateList);
		return "share/cateShare";
	}
	
	@RequestMapping("/selectByCondition.do")
	public String selectByCondition(Model model,Integer cid,String bookname,String author
			,Integer orderid){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("cid",cid);
		map.put("bookname",bookname);
		map.put("author",author);
		map.put("orderid",orderid);
		List<Share> list = shareService.selectByCondition(map);
		model.addAttribute("shareList", list);
		return "share/cateShareIframe";
	}
	
}
