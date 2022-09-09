package com.example.persistence;

import com.example.Book;
import net.sf.esfinge.querybuilder.Repository;

import java.util.List;

public interface BookDAO extends Repository<Book> {

	List<Book> getBookOrderById();

}
