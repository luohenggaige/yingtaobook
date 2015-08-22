package cn.tushu.service;

import java.util.List;
import java.util.Map;

import cn.tushu.model.User;

public interface UserService {
	public void insert(User user);
	public void deleteById(Integer userId);
	public void updateById(Integer userId);
	public List<User> selectByAll();
	public User selectById(Integer userId);
	public User selectLogin(Map<String,Object> map);
	public List<User> findByUserName (Map<String,Object> map);
	public org.springframework.security.core.userdetails.User selectByUsername (String username);
}
