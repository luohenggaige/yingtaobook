package cn.tushu.daoImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import cn.tushu.dao.JurisdictDao;
import cn.tushu.model.Jurisdict;
@Repository
public class JurisdictDaoImpl extends SqlSessionDaoSupport implements JurisdictDao {

	String sn = "sql.mapper.JurisdictMapper.";

	@Override
	public void insert(Jurisdict Jurisdict) {
		this.getSqlSession().insert(sn+"insert", Jurisdict);
	}

	@Override
	public void deleteById(Integer JurisdictId) {
		
	}

	@Override
	public void updateById(Integer JurisdictId) {
		
	}

	@Override
	public List<Jurisdict> selectByAll(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"selectByAll",map);
	}

	@Override
	public Jurisdict selectById(Integer JurisdictId) {
		return null;
	}

	@Override
	public List<Jurisdict> SelectAllJurisdict() {
		return this.getSqlSession().selectList(sn+"SelectAllJurisdict");
	}


	@Override
	public List<Jurisdict> selectByCondition(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"selectByCondition",map);
	}

}
