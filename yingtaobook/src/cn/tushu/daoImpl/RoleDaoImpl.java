package cn.tushu.daoImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import cn.tushu.dao.RoleDao;
import cn.tushu.model.Role;
@Repository
public class RoleDaoImpl extends SqlSessionDaoSupport implements RoleDao {

	String sn = "sql.mapper.RoleMapper.";

	@Override
	public void insert(Role Role) {
		this.getSqlSession().insert(sn+"insert", Role);
	}

	@Override
	public void deleteById(Integer RoleId) {
		
	}

	@Override
	public void updateById(Integer RoleId) {
		
	}

	@Override
	public List<Role> selectByAll(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"selectByAll",map);
	}

	@Override
	public Role selectById(Integer RoleId) {
		return (Role) this.getSqlSession().selectOne(sn+"selectById", RoleId);
	}

	@Override
	public List<Role> SelectAllRole() {
		return this.getSqlSession().selectList(sn+"SelectAllRole");
	}


	@Override
	public List<Role> selectByCondition(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"selectByCondition",map);
	}

}
