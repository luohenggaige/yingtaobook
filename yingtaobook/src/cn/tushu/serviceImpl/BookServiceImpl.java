package cn.tushu.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tushu.dao.BookDao;
import cn.tushu.model.Book;
import cn.tushu.service.BookService;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookDao bookDao;

	@Override
	public void insert(Book book) {
		bookDao.insert(book);
	}

	@Override
	public void deleteById(Integer bookId) {
		
	}

	@Override
	public void updateById(Integer bookId) {
		
	}

	@Override
	public List<Book> selectByAll() {
		return null;
	}

	@Override
	public Book selectById(Integer bookId) {
		return null;
	}

	@Override
	public Book selectLogin(Map<String, Object> map) {
		return null;
	}
	
}
