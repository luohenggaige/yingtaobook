package cn.tushu.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tushu.dao.ShareDao;
import cn.tushu.model.Share;
import cn.tushu.service.ShareService;

@Service
public class ShareServiceImpl implements ShareService {

	@Autowired
	ShareDao ShareDao;

	@Override
	public void insert(Share Share) {
		ShareDao.insert(Share);
	}

	@Override
	public void deleteById(Integer ShareId) {
		
	}

	@Override
	public void updateById(Integer ShareId) {
		
	}

	@Override
	public List<Share> selectByAll() {
		return ShareDao.selectByAll();
	}

	@Override
	public Share selectById(Integer ShareId) {
		return null;
	}

	@Override
	public List<Share> selectByAllHeat() {
		return ShareDao.selectByAllHeat();
	}

	@Override
	public List<Share> CateSelectAllDate(Map<String, Object> map) {
		return ShareDao.CateSelectAllDate(map);
	}

	@Override
	public List<Share> CateSelectAllHeat(Map<String, Object> map) {
		return ShareDao.CateSelectAllHeat(map);
	}
	
	
}
