package cn.tushu.dao;

import java.util.List;
import java.util.Map;

import cn.tushu.model.Book;
import cn.tushu.model.User;

public interface BookDao {
	
	public void insert(Book book);
	public void deleteById(Integer bookId);
	public void updateById(Integer bookId);
	public List<Book> selectByAll();
	public Book selectById(Integer bookId);
	public Book selectLogin(Map<String,Object> map);
}
