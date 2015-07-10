package cn.tushu.daoImpl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import cn.tushu.dao.CategoryDao;
import cn.tushu.model.Category;
import cn.tushu.model.User;
@Repository
public class CategoryDaoImpl extends SqlSessionDaoSupport implements CategoryDao {

	String sn = "sql.mapper.CategoryMapper.";

	@Override
	public void insert(Category Category) {
		this.getSqlSession().insert(sn+"insert", Category);
	}

	@Override
	public void deleteById(Integer CategoryId) {
		
	}

	@Override
	public void updateById(Integer CategoryId) {
		
	}

	@Override
	public List<Category> selectByAll() {
		return this.getSqlSession().selectList(sn+"selectByAll");
	}

	@Override
	public Category selectById(Integer CategoryId) {
		return null;
	}

	@Override
	public Category selectLogin(Map<String, Object> map) {
		return null;
	}

}
