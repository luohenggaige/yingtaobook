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
	public List<Share> selectByAll(Map<String, Object> map) {
		return ShareDao.selectByAll(map);
	}

	@Override
	public Share selectById(Integer ShareId) {
		return null;
	}

	@Override
	public List<Share> SelectAllShare() {
		return ShareDao.SelectAllShare();
	}


	@Override
	public List<Share> selectByCondition(Map<String, Object> map) {
		return ShareDao.selectByCondition(map);
	}
	
	
}
