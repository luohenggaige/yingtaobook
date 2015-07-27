package cn.tushu.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tushu.dao.RoleJuriDao;
import cn.tushu.model.RoleJuri;
import cn.tushu.service.RoleJuriService;

@Service
public class RoleJuriServiceImpl implements RoleJuriService {

	@Autowired
	RoleJuriDao RoleJuriDao;

	@Override
	public void insert(RoleJuri RoleJuri) {
		RoleJuriDao.insert(RoleJuri);
	}

	@Override
	public void deleteById(Integer RoleJuriId) {
		
	}

	@Override
	public void updateById(Integer RoleJuriId) {
		
	}

	@Override
	public List<RoleJuri> selectByAll(Map<String, Object> map) {
		return RoleJuriDao.selectByAll(map);
	}

	@Override
	public RoleJuri selectById(Integer RoleJuriId) {
		return null;
	}

	@Override
	public List<RoleJuri> SelectAllRoleJuri() {
		return RoleJuriDao.SelectAllRoleJuri();
	}


	@Override
	public List<RoleJuri> selectByCondition(Map<String, Object> map) {
		return RoleJuriDao.selectByCondition(map);
	}
	
	
}
