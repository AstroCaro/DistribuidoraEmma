package persistence;

import model.Product;

import java.util.List;

public interface ProductDao {

    Product findById(Long id);

    List<Product> findAll();

    Product addStock(Integer amount, Long id);

    Product insert(Product product);

    Product update(Product product);

    Product delete(Product product);

    Product softDelete(Product product);

    Product updateStock(Product product);
}