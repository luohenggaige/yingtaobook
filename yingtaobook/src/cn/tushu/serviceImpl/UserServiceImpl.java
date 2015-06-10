package cn.tushu.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tushu.dao.UserDao;
import cn.tushu.model.User;
import cn.tushu.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	@Override
	public void insert(User user) {
		userDao.insert(user);
	}

	@Override
	public void deleteById(Integer userId) {

	}

	@Override
	public void updateById(Integer userId) {

	}

	@Override
	public List<User> selectByAll() {
		return null;
	}

	@Override
	public User selectById(Integer userId) {
		return null;
	}

	@Override
	public User selectLogin(Map<String,Object> map) {
		return userDao.selectLogin(map);
	}

	@Override
	public List<User> findByUserName(Map<String, Object> map) {
		return userDao.findByUserName(map);
	}

}
