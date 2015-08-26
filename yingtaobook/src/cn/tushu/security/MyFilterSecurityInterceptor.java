package cn.tushu.security;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.springframework.security.access.SecurityMetadataSource;
import org.springframework.security.access.intercept.AbstractSecurityInterceptor;
import org.springframework.security.access.intercept.InterceptorStatusToken;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;

public class MyFilterSecurityInterceptor extends AbstractSecurityInterceptor
		implements Filter {

	//配置文件注入
    private FilterInvocationSecurityMetadataSource securityMetadataSource;
	
    public FilterInvocationSecurityMetadataSource getSecurityMetadataSource() {  
        return this.securityMetadataSource;  
    }
    
	@Override
	public void destroy() {
	}

	//登陆后，每次访问资源都通过这个拦截器拦截
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException { 
        FilterInvocation fi = new FilterInvocation(request, response, chain); 
        invoke(fi);  
        }
	
	public void invoke(FilterInvocation fi) throws IOException, ServletException {
        //fi里面有一个被拦截的url
        //里面调用MyInvocationSecurityMetadataSource的getAttributes(Object object)这个方法获取fi对应的所有权限
        //再调用MyAccessDecisionManager的decide方法来校验用户的权限是否足够
        InterceptorStatusToken token = super.beforeInvocation(fi);
        try {
            //执行下一个拦截器
            fi.getChain().doFilter(fi.getRequest(), fi.getResponse());   
            } finally { 
                super.afterInvocation(token, null);  
            }   
        }  

	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}

	@Override
	public Class<?> getSecureObjectClass() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SecurityMetadataSource obtainSecurityMetadataSource() { 
        return this.securityMetadataSource;   
        }

	public void setSecurityMetadataSource(FilterInvocationSecurityMetadataSource newSource){ 
        this.securityMetadataSource = newSource; 
    }
}
