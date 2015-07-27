package cn.tushu.daoImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import cn.tushu.dao.RoleJuriDao;
import cn.tushu.model.RoleJuri;
@Repository
public class RoleJuriDaoImpl extends SqlSessionDaoSupport implements RoleJuriDao {

	String sn = "sql.mapper.RoleJuriMapper.";

	@Override
	public void insert(RoleJuri RoleJuri) {
		this.getSqlSession().insert(sn+"insert", RoleJuri);
	}

	@Override
	public void deleteById(Integer RoleJuriId) {
		
	}

	@Override
	public void updateById(Integer RoleJuriId) {
		
	}

	@Override
	public List<RoleJuri> selectByAll(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"selectByAll",map);
	}

	@Override
	public RoleJuri selectById(Integer RoleJuriId) {
		return null;
	}

	@Override
	public List<RoleJuri> SelectAllRoleJuri() {
		return this.getSqlSession().selectList(sn+"SelectAllRoleJuri");
	}


	@Override
	public List<RoleJuri> selectByCondition(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"selectByCondition",map);
	}

}
