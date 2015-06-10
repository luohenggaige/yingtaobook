package cn.tushu.daoImpl;

import java.util.List;

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
		return null;
	}

	@Override
	public Share selectById(Integer ShareId) {
		return null;
	}

}
