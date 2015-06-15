package cn.tushu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.Share;
import cn.tushu.service.ShareService;

@Controller
@RequestMapping("/share")
public class ShareController {
	
	@Autowired
	ShareService shareService;
	
	@RequestMapping("/myListShare.do")
	public String toListShare(Model model){
		List<Share> list = shareService.selectByAll();
		model.addAttribute("shareList", list);
		return "share/myListShare";
	}
	
	@RequestMapping("/toAddShare.do")
	public String toAddShare(){
		return "share/addShare";
	}
	
	@RequestMapping("/addShare.do")
	public String addShare(Share share){
		shareService.insert(share);
		return "redirect:toListShare.do";
	}
	
	@RequestMapping("/CateSelectAllDate.do")
	public String CateSelectAll(Model model,Integer cid){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("cid", cid);
		List<Share> list = shareService.CateSelectAllDate(map);
		model.addAttribute("cateList", list);
		return "share/cateShare";
	}
	
	@RequestMapping("/CateSelectAllHeat.do")
	public String CateSelectAllHeat(Model model,Integer cid){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("cid", cid);
		List<Share> list = shareService.CateSelectAllHeat(map);
		model.addAttribute("cateList", list);
		return "share/cateShare";
	}
	
}
