package cn.tushu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tushu.model.Book;
import cn.tushu.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {
	 
	@Autowired
	BookService bookService;
	
	@RequestMapping("/toBookList.do")
	public String toBookList(){
		return "conbook/bookList";
	}
	
	@RequestMapping("/toAddBook.do")
	public String toAddBook(){
		return "conbook/addBook";
	}
	
	@RequestMapping("/addBook.do")
	public String AddBook(Book book,String subAndAdd){
		bookService.insert(book);
		if(subAndAdd == "0"){
			return "redirect:/book/toAddBook.do";
		}else{
			return "redirect:/book/toList.do";
		}
	}
	
}
