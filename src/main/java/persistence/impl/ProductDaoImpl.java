package persistence.impl;

import model.Product;
import persistence.ProductDao;
import persistence.commons.ConnectionProvider;
import persistence.commons.MissingDataException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements ProductDao {

    @Override
    public Product findById(Long id) {
        try {
            String sql = "SELECT * FROM products WHERE id = ?;";
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setLong(1, id);
            ResultSet result = statement.executeQuery();

            Product product = null;
            if (result.next()) {
                product = toProduct(result);
            }
            return product;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public List<Product> findAll() {
        try {
            String sql = "SELECT * FROM products;";
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet results = statement.executeQuery();

            List<Product> products = new ArrayList<Product>();
            while (results.next()) {
                products.add(toProduct(results));
            }

            return products;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public Product addStock(Integer amount, Long id) {
        return null;
    }

    @Override
    public Product insert(Product product) {
        return null;
    }

    @Override
    public Product update(Product product) {
        return null;
    }

    @Override
    public Product delete(Product product) {
        return null;
    }

    @Override
    public Product softDelete(Product product) {
        return null;
    }

    @Override
    public Product updateStock(Product product) {
        return null;
    }


    private Product toProduct(ResultSet result) {
        try {
            return new Product(result.getLong("id"), result.getString("name"),
                    result.getString("short_description"),
                    result.getString("description"),
                    result.getInt("stock"),
                    result.getDouble("price"),
                    result.getString("img"));

        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

}
