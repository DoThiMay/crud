package com.springmvc.demo.repositories;

import org.springframework.data.repository.CrudRepository;

import com.springmvc.demo.models.Product;

public interface ProductRepository extends CrudRepository<Product, String>{
	Iterable<Product> findByCategoryID(String CategoryID);
	// viết dòng này xong nó mặc định tự hiểu là nó sẽ select * from products bằng categoryID
}
