package cn.tushu.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tushu.dao.CategoryDao;
import cn.tushu.model.Category;
import cn.tushu.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryDao CategoryDao;

	@Override
	public void insert(Category Category) {
		CategoryDao.insert(Category);
	}

	@Override
	public void deleteById(Integer CategoryId) {
		
	}

	@Override
	public void updateById(Integer CategoryId) {
		
	}

	@Override
	public List<Category> selectByAll() {
		return CategoryDao.selectByAll();
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
