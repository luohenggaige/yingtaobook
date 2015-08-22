package cn.tushu.daoImpl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import cn.tushu.dao.UserDao;
import cn.tushu.model.User;
@Repository
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

	String sn = "sql.mapper.UserMapper.";
	
	@Override
	public void insert(User user) {
		this.getSqlSession().insert(sn+"insert",user);
	}

	public void deleteById(Integer userId) {

	}

	public void updateById(Integer userId) {

	}

	public List<User> selectByAll() {
		return null;
	}

	public User selectById(Integer userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User selectLogin(Map<String,Object> map) {
		return (User) this.getSqlSession().selectOne(sn+"selectLogin",map);
	}

	@Override
	public List<User> findByUserName(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"findByUserName", map);
	}

	@Override
	public org.springframework.security.core.userdetails.User selectByUsername(String username) {
		return (org.springframework.security.core.userdetails.User) this.getSqlSession().selectOne(sn+"selectByUsername", username);
	}

}
