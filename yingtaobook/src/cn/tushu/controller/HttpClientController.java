package cn.tushu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Union.JnkyServer;
import cn.tushu.util.Util;

@Controller
@RequestMapping("/httpClient")
public class HttpClientController {
	
	@RequestMapping("/tohttpClient.do")
	public String toPay(){
		return "orderjsp/index";
	}
	
	@RequestMapping("/httpClientPay.do")
	public String pay(HttpServletRequest request, HttpServletResponse response,Model model){
		//银行公钥：测试环境上请到这里下载：http://www.cmbc.com.cn/cmbc/ca/testcmbc.cer；生产环境上请到这里下载：http://www.cmbc.com.cn/cmbc/ca/cmbc.cer
		//商户私钥：测试环境上使用该目录下的ceshi.pfx；
		//商户私钥密码：测试环境上为1111；
		String envolopData = "";
		try {
			
			JnkyServer my = new JnkyServer(Util.readFile("D:/eclipse/eclipse-jee-kepler-R-win32/workspase/yingtaobook/src/cn/luosong/util/cmbccert.pfx").toByteArray(),
					Util.readFile("D:/eclipse/eclipse-jee-kepler-R-win32/workspase/yingtaobook/src/cn/luosong/util/ceshi.pfx").toByteArray(),"1111");
//			// 创建默认的httpClient实例.    
//	        CloseableHttpClient httpclient = HttpClients.createDefault();  
//	        // 创建httppost    
//	        HttpPost httppost = new HttpPost("https://220.194.27.16:5017/weblogic/servlets/EService/CSM/B2C/servlet/ReceiveMerchantCMBCTxReqServlet");  
            
			envolopData = my.EnvelopData("010010000001|01.00|01|20150603|121212|01001|隆投贷|||0|http://172.31.31.70/WSCS/index.jsp|");
			System.out.println(envolopData);
			
			JnkyServer my1 = new JnkyServer(Util.readFile("E:\\mingsheng\\ceshi.pfx").toByteArray(),"1111");

			String plainText = my1.DecryptData("银行端返回的密文");
			System.out.println(plainText);
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		model.addAttribute("envolopData", envolopData);
//		return new RedirectView("/http://220.194.27.16:5017", false, false, false);
		return "order/index.jsp";
	}
}
