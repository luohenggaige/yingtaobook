package cn.tushu.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.luosong.util.ECPS_Constants;
import cn.luosong.util.UploadResponse;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;

@Controller
@RequestMapping("/upload")
public class UploadController {
	
	@RequestMapping("/upload.do")
	public void upload(HttpServletRequest request,String file, PrintWriter pwOut) throws Exception{
		//流程：选择图片后直接上传（也可以和表单一起上传），策略：异步全部上传，而只取图片；实现：用JQuery的外围插件偷偷摸摸上传
		//展示图；实现：JQuery上传后返回图片绝对路径，由JQuery填充至标签中
		
		//获取数据//1、接收所有数据转成复杂类型request；2、获取其中文件数据、3、并转成字节
		MultipartHttpServletRequest mr = (MultipartHttpServletRequest) request;
		CommonsMultipartFile cfile =  (CommonsMultipartFile) mr.getFile(file);
		byte[] bfile = cfile.getBytes();
		
		//创建文件名及获取后缀
		String yfileName = cfile.getOriginalFilename();
		String fileName = "";
		fileName = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
		Random random = new Random();
		for (int i = 0;i<3;i++){
			fileName = fileName+random.nextInt(10);//0 <= nextInt(n) < n
		}//获得后缀
		fileName = fileName+yfileName.substring(yfileName.lastIndexOf("."));
		
		//获取路径，写入图片字节文件。在此用webservice在不同系统（主机）间交互通信
		String filePath = request.getContextPath()+"/upload/"+fileName;//图片服务器上的绝对路径
//		Client client = Client.create();
//		WebResource wr = client.resource(filePath);
//		wr.put(String.class, bfile);
		OutputStream out = new FileOutputStream(new File(filePath));
		out.write(bfile);
		out.flush();
		out.close();
		
		//从ajax向此controller发送图片存储，现在又返回图片绝对路径给ajax做小框展示（还有相对路径：存数据库中的）
//		String resuce = "{\"filePath\":\""+filePath+"\",\"ralPath\":\"upload/"+fileName+"\"}";
		String resuce = "{\"ralPath\":\"upload/"+fileName+"\"}";
		pwOut.write(resuce);
	}
	
}
