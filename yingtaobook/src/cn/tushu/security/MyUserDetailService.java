package cn.tushu.security;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import cn.tushu.service.UserService;


public class MyUserDetailService implements UserDetailsService { 
    
	@Autowired
	UserService userService;
	
    //登陆验证时，通过username获取用户的所有权限信息，
    //并返回User放到spring的全局缓存SecurityContextHolder中，以供授权器使用
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException, DataAccessException {   
//    	Collection<grantedauthority> auths=new ArrayList<grantedauthority>(); 
//        GrantedAuthorityImpl auth2=new GrantedAuthorityImpl("ROLE_ADMIN"); 
//        GrantedAuthorityImpl auth1=new GrantedAuthorityImpl("ROLE_USER"); 
//        if(username.equals("lcy")){ 
//            auths=new ArrayList<grantedauthority>(); 
//            auths.add(auth1);
//            auths.add(auth2);      
//        }     
//        User user = new User(username, "lcy", true, true, true, true, auths); 
    	
    	User user = userService.selectByUsername(username);
        return user;  
        } 
    }
