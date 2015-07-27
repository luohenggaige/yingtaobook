package cn.tushu.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tushu.dao.RoleDao;
import cn.tushu.model.Role;
import cn.tushu.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	RoleDao RoleDao;

	@Override
	public void insert(Role Role) {
		RoleDao.insert(Role);
	}

	@Override
	public void deleteById(Integer RoleId) {
		
	}

	@Override
	public void updateById(Integer RoleId) {
		
	}

	@Override
	public List<Role> selectByAll(Map<String, Object> map) {
		return RoleDao.selectByAll(map);
	}

	@Override
	public Role selectById(Integer RoleId) {
		return RoleDao.selectById(RoleId);
	}

	@Override
	public List<Role> SelectAllRole() {
		return RoleDao.SelectAllRole();
	}


	@Override
	public List<Role> selectByCondition(Map<String, Object> map) {
		return RoleDao.selectByCondition(map);
	}
	
	
}
