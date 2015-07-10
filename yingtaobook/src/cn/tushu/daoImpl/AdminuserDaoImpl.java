package cn.tushu.daoImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import cn.tushu.dao.AdminuserDao;
import cn.tushu.model.Adminuser;
@Repository
public class AdminuserDaoImpl extends SqlSessionDaoSupport implements AdminuserDao {

	String sn = "sql.mapper.AdminuserMapper.";

	@Override
	public void insert(Adminuser Adminuser) {
		this.getSqlSession().insert(sn+"insert", Adminuser);
	}

	@Override
	public void deleteById(Integer AdminuserId) {
		
	}

	@Override
	public void updateById(Integer AdminuserId) {
		
	}

	@Override
	public List<Adminuser> selectByAll(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"selectByAll",map);
	}

	@Override
	public Adminuser selectById(Integer AdminuserId) {
		return null;
	}

	@Override
	public List<Adminuser> SelectAllAdminuser() {
		return this.getSqlSession().selectList(sn+"SelectAllAdminuser");
	}


	@Override
	public List<Adminuser> selectByCondition(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"selectByCondition",map);
	}

}
