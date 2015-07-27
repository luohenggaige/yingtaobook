package cn.tushu.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tushu.dao.JurisdictDao;
import cn.tushu.model.Jurisdict;
import cn.tushu.service.JurisdictService;

@Service
public class JurisdictServiceImpl implements JurisdictService {

	@Autowired
	JurisdictDao JurisdictDao;

	@Override
	public void insert(Jurisdict Jurisdict) {
		JurisdictDao.insert(Jurisdict);
	}

	@Override
	public void deleteById(Integer JurisdictId) {
		
	}

	@Override
	public void updateById(Integer JurisdictId) {
		
	}

	@Override
	public List<Jurisdict> selectByAll(Map<String, Object> map) {
		return JurisdictDao.selectByAll(map);
	}

	@Override
	public Jurisdict selectById(Integer JurisdictId) {
		return null;
	}

	@Override
	public List<Jurisdict> SelectAllJurisdict() {
		return JurisdictDao.SelectAllJurisdict();
	}


	@Override
	public List<Jurisdict> selectByCondition(Map<String, Object> map) {
		return JurisdictDao.selectByCondition(map);
	}
	
	
}
