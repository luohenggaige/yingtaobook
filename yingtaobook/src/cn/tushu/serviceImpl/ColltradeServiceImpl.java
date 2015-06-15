package cn.tushu.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tushu.dao.ColltradeDao;
import cn.tushu.model.Colltrade;
import cn.tushu.service.ColltradeService;

@Service
public class ColltradeServiceImpl implements ColltradeService {

	@Autowired
	ColltradeDao ColltradeDao;

	@Override
	public void insert(Colltrade Colltrade) {
		ColltradeDao.insert(Colltrade);
	}

	@Override
	public void deleteById(Integer ColltradeId) {
		
	}

	@Override
	public void updateById(Integer ColltradeId) {
		
	}

	@Override
	public List<Colltrade> selectByAll() {
		return ColltradeDao.selectByAll();
	}

	@Override
	public Colltrade selectById(Integer ColltradeId) {
		return null;
	}

	@Override
	public List<Colltrade> selectByAllHeat() {
		return ColltradeDao.selectByAllHeat();
	}

	@Override
	public List<Colltrade> CateSelectAllDate(Map<String, Object> map) {
		return ColltradeDao.CateSelectAllDate(map);
	}

	@Override
	public List<Colltrade> CateSelectAllHeat(Map<String, Object> map) {
		return ColltradeDao.CateSelectAllHeat(map);
	}
	
	
}
