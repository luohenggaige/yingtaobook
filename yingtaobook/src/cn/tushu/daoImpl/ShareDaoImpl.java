package cn.tushu.daoImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import cn.tushu.dao.ShareDao;
import cn.tushu.model.Share;
@Repository
public class ShareDaoImpl extends SqlSessionDaoSupport implements ShareDao {

	String sn = "sql.mapper.ShareMapper.";

	@Override
	public void insert(Share Share) {
		this.getSqlSession().insert(sn+"insert", Share);
	}

	@Override
	public void deleteById(Integer ShareId) {
		
	}

	@Override
	public void updateById(Integer ShareId) {
		
	}

	@Override
	public List<Share> selectByAll() {
		return this.getSqlSession().selectList(sn+"selectByAll");
	}

	@Override
	public Share selectById(Integer ShareId) {
		return null;
	}

	@Override
	public List<Share> selectByAllHeat() {
		return this.getSqlSession().selectList(sn+"selectByAllHeat");
	}

	@Override
	public List<Share> CateSelectAllDate(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"CateSelectAllDate",map);
	}

	@Override
	public List<Share> CateSelectAllHeat(Map<String, Object> map) {
		return this.getSqlSession().selectList(sn+"CateSelectAllHeat",map);
	}

}
