package cn.tushu.daoImpl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import cn.tushu.dao.ColltradeDao;
import cn.tushu.model.Colltrade;
@Repository
public class CollDaoImpl extends SqlSessionDaoSupport implements ColltradeDao {

	String sn = "sql.mapper.ColltradeMapper.";

	@Override
	public void insert(Colltrade Colltrade) {
		this.getSqlSession().insert(sn+"insert", Colltrade);
	}

	@Override
	public void deleteById(Integer ColltradeId) {
		
	}

	@Override
	public void updateById(Integer ColltradeId) {
		
	}

	@Override
	public List<Colltrade> selectByAll() {
		return this.getSqlSession().selectList(sn+"selectByAll");
	}

	@Override
	public Colltrade selectById(Integer ColltradeId) {
		return null;
	}

	@Override
	public List<Colltrade> selectByAllHeat() {
		return this.getSqlSession().selectList(sn+"selectByAllHeat");
	}

	@Override
	public List<Colltrade> CateSelectAllDate(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"CateSelectAllDate",map);
	}

	@Override
	public List<Colltrade> CateSelectAllHeat(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"CateSelectAllHeat",map);
	}

}
