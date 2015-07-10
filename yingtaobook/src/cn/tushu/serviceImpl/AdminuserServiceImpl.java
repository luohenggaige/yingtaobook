package cn.tushu.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tushu.dao.AdminuserDao;
import cn.tushu.model.Adminuser;
import cn.tushu.service.AdminuserService;

@Service
public class AdminuserServiceImpl implements AdminuserService {

	@Autowired
	AdminuserDao AdminuserDao;

	@Override
	public void insert(Adminuser Adminuser) {
		AdminuserDao.insert(Adminuser);
	}

	@Override
	public void deleteById(Integer AdminuserId) {
		
	}

	@Override
	public void updateById(Integer AdminuserId) {
		
	}

	@Override
	public List<Adminuser> selectByAll(Map<String, Object> map) {
		return AdminuserDao.selectByAll(map);
	}

	@Override
	public Adminuser selectById(Integer AdminuserId) {
		return null;
	}

	@Override
	public List<Adminuser> SelectAllAdminuser() {
		return AdminuserDao.SelectAllAdminuser();
	}


	@Override
	public List<Adminuser> selectByCondition(Map<String, Object> map) {
		return AdminuserDao.selectByCondition(map);
	}
	
	
}
