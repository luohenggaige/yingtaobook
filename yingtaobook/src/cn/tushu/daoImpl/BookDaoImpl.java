package cn.tushu.daoImpl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import cn.tushu.dao.BookDao;
import cn.tushu.model.Book;
import cn.tushu.model.User;
@Repository
public class BookDaoImpl extends SqlSessionDaoSupport implements BookDao {

	String sn = "sql.mapper.BookMapper.";

	@Override
	public void insert(Book book) {
		this.getSqlSession().insert(sn+"insert", book);
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
