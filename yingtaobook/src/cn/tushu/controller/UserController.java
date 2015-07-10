package cn.tushu.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.User;
import cn.tushu.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/toLogin.do")
	public String toLogin(){
		return "index/login";
	}
	
	@RequestMapping("/login.do")
	public String login(String username,String password,String piccodeImage,HttpSession session,Model model){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("username", username);
		map.put("password", password);
//		User user = userService.selectLogin(map);
		User user = new User();
		user.setUsername(username);
		String tip = "";
		if(user == null){
			tip = "userOrPassError";
			model.addAttribute("tip", tip);
			return "redirect:login.do";
		}
		String piccode = (String) session.getAttribute("piccode");
		if(piccodeImage != null && piccodeImage != null && !piccode.equalsIgnoreCase(piccodeImage)){
			model.addAttribute("tip", "picError");
			return "redirect:login.do";
		}
//		session.setAttribute("exisuser", user);
//		return "redirect:/index/toIndex.do";
		return "index/index";
	}
	
	@RequestMapping("/toRegister.do")
	public String toRegister(){
		return "index/reg";
	}
	
	@RequestMapping("/register.do")
	public String register(HttpSession session,User user,String piccodeImage,Model model){
		String piccode = (String) session.getAttribute("piccode");
		if(piccodeImage != null && piccodeImage != null && !piccode.equalsIgnoreCase(piccodeImage)){
			model.addAttribute("tip", "picError");
			return "redirect:/user/toRegister.do";
		}
		userService.insert(user);
		return "index/login";
	}
	
	@RequestMapping("/getImage.do")
	public void getImage(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("#######################生成数字和字母的验证码#######################");  
        BufferedImage img = new BufferedImage(68, 22,BufferedImage.TYPE_INT_RGB);  
        // 得到该图片的绘图对象    
        Graphics g = img.getGraphics();  
        Random r = new Random();  
        Color c = new Color(200, 150, 255);  
        g.setColor(c);  
        // 填充整个图片的颜色    
        g.fillRect(0, 0, 68, 22);  
        // 向图片中输出数字和字母    
        StringBuffer sb = new StringBuffer();  
        char[] ch = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();  
        int index, len = ch.length;  
        for (int i = 0; i < 4; i++) {  
            index = r.nextInt(len);  
            g.setColor(new Color(r.nextInt(88), r.nextInt(188), r.nextInt(255)));  
            g.setFont(new Font("Arial", Font.BOLD | Font.ITALIC, 22));  
            // 输出的  字体和大小                      
            g.drawString("" + ch[index], (i * 15) + 3, 18);  
            //写什么数字，在图片 的什么位置画    
            sb.append(ch[index]);  
        }  
        request.getSession().setAttribute("piccode", sb.toString());
        String piccode = sb.toString();
        System.out.println("piccode="+piccode);
        ImageIO.write(img, "JPG", response.getOutputStream());  
	}
	
	@RequestMapping("/findByUserName.do")
	public void findByUserName(String userName,PrintWriter out){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("userName", userName);
		List<User> list = userService.findByUserName(map);
		String result = "no";
		if(list.size()>0){
			result = "yes";
		}
		out.write(result);
	}
	
}
