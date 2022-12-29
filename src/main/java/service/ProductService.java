package service;

import model.Product;
import persistence.commons.DaoFactory;

import java.util.List;

public class ProductService {

    public List<Product> findAll() {
        return DaoFactory.getProductDao().findAll();
    }

    public Product findById(Long id) {
        return DaoFactory.getProductDao().findById(id);
    }
}
