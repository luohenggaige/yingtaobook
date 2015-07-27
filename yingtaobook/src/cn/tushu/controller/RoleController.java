package cn.tushu.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.Jurisdict;
import cn.tushu.model.Role;
import cn.tushu.model.RoleJuri;
import cn.tushu.service.JurisdictService;
import cn.tushu.service.RoleJuriService;
import cn.tushu.service.RoleService;

@Controller
@RequestMapping("/role")
public class RoleController {
	
	@Autowired
	RoleService roleService;
	@Autowired
	RoleJuriService roleJuriService;
	@Autowired
	JurisdictService jurisdictService;
	
	@RequestMapping("/listRole.do")
	public String listRole(Model model){
		List<Role> list = roleService.SelectAllRole();
		model.addAttribute("listRole", list);
//		return "role/listRole";
		return "adminindex/adminIndexC";
	}
	
	@RequestMapping("/toEditRoleJuri.do")
	public String toEditRoleJuri(Model model,Integer rid,String rname){
		List<Jurisdict> listJuri = jurisdictService.SelectAllJurisdict();
		model.addAttribute("listJuri", listJuri);
		Role role = roleService.selectById(rid);
		model.addAttribute("role", role);
		/*try {
			rname = new String(rname.getBytes("iso8859-1"),"utf8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}get方式提交需要转码*/
		return "role/editRole";
	}
	
	@RequestMapping("/editRoleJuri.do")
	public String editRoleJuri(Model model,RoleJuri roleJuri,Integer rid){
		roleJuri.setRid(rid);
		roleJuriService.insert(roleJuri);
		return "redirect:listRole.do";
	}
	
	
}
