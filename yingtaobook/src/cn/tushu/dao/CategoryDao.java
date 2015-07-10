package cn.tushu.dao;

import java.util.List;
import java.util.Map;

import cn.tushu.model.Category;

public interface CategoryDao {
	
	public void insert(Category Category);
	public void deleteById(Integer CategoryId);
	public void updateById(Integer CategoryId);
	public List<Category> selectByAll();
	public Category selectById(Integer CategoryId);
	public Category selectLogin(Map<String,Object> map);
}
