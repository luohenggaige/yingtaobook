package cn.tushu.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.Share;
import cn.tushu.service.ShareService;

@Controller
@RequestMapping("/share")
public class ShareController {
	
	@Autowired
	ShareService shareService;
	
	@RequestMapping("/toListShare.do")
	public String toListShare(){
		return "share/listShare";
	}
	
	@RequestMapping("/toAddShare.do")
	public String toAddShare(){
		return "share/addShare";
	}
	
	@RequestMapping("/addShare.do")
	public String addShare(Share share){
		shareService.insert(share);
		return "share/listShare";
	}
	
//	@RequestMapping("/testaddShare.do")
//	public String testaddShare(Share share,HttpServletRequest request){
//		String filename = null;
//		Map<String,String[]> map = new HashMap<String,String[]>();
//		try {
//			Share book = new Share();
//			DiskFileItemFactory factory = new DiskFileItemFactory();//文件上传工厂
//			ServletFileUpload fileUpload = new ServletFileUpload(factory);	//核心上传类
//			List<FileItem> list = fileUpload.parseRequest(request);	//解析数据
//			for(FileItem fileItem:list){
//				if(fileItem.isFormField()){
//					//普通项
//					String name = fileItem.getFieldName();
//					String value = fileItem.getString("UTF-8");
//					map.put(name,new String[]{value});
//				}else{
//					//上传项
//					filename = fileItem.getName();				//获得文件名、数据、所放磁盘绝对路径及流
//					//兼容IE6
//					if (filename.lastIndexOf("\\") != -1) {		//lastIndexOf返回指定字符在此字符串中最后一次出现处的索引。!=-1即有此指定字符串,为IE6
//						filename = filename.substring(filename	//兼容IE6，为IE6的文件名获取
//								.lastIndexOf("\\") + 1);
//					}//数据
//					InputStream is = new BufferedInputStream(fileItem.getInputStream());
//					String path = getServletContext().getRealPath("/book_img");
//					File file = new File(path,filename);
//					OutputStream os = new BufferedOutputStream(new FileOutputStream(file));
//					//流对接
//					int len = 0;
//					while((len=is.read())!=-1){		//read()从输入流中读取数据的下一个字节。赋给len由输出流从内存写入目标地址
//						os.write(len);
//					}
//					is.close();
//					os.close();
//				}
//			}
//			//封装数据，先用map接参数，在封入book
//			BeanUtils.populate(book, map);
//			book.setBid(UUIDUtils.getUUID());
//			book.setIsdel(0);
//			book.setImage("book_img/"+filename);
//			AdminCategory category = new AdminCategory();
//			category.setCid(map.get("cid")[0]);
//			book.setCategory(category);
//			new AdminBookService().addBook(book);
//			findAll(request,response);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return "share/listShare";
//	}
	
	
}
