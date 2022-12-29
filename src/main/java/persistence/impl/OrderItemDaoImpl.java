package persistence.impl;

import model.OrderItem;
import model.Product;
import persistence.OrderItemDao;
import persistence.commons.ConnectionProvider;
import persistence.commons.DaoFactory;
import persistence.commons.MissingDataException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OrderItemDaoImpl implements OrderItemDao {

    @Override
    public OrderItem findById(Long id) {
        try {
            String sql = "SELECT * FROM order_items WHERE id = ?;";
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setLong(1, id);
            ResultSet result = statement.executeQuery();

            OrderItem orderItem = null;
            if (result.next()) {
                orderItem = toOrderItem(result);
            }
            return orderItem;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public List<OrderItem> findAll() {
        try {
            String sql = "SELECT * FROM order_items;";
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet results = statement.executeQuery();

            List<OrderItem> orderItems = new ArrayList<OrderItem>();
            while (results.next()) {
                orderItems.add(toOrderItem(results));
            }

            return orderItems;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public int insert(OrderItem orderItem) {
        try {
            String sql = "INSERT INTO order_items (product_id, quantity) VALUES (?, ?);";

            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            statement.setLong(1, orderItem.getProduct().getId());
            statement.setInt(2, orderItem.getQuantity());

            int rows = statement.executeUpdate();

            ResultSet result = statement.getGeneratedKeys();
            if (result.next()) {
                Long id = result.getLong(1);
                orderItem.setId(id);
            }
            return rows;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public int updateQuantity(OrderItem orderItem) {
        try {
            String sql = "UPDATE order_items SET quantity = ? WHERE id = ?;";
            Connection conn = ConnectionProvider.getConnection();

            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, orderItem.getQuantity());
            statement.setLong(2, orderItem.getId());
            int rows = statement.executeUpdate();
            return rows;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public int deleteById(Long id) {
        try {
            String sql = "DELETE FROM order_items WHERE id = ?;";
            Connection conn = ConnectionProvider.getConnection();

            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setLong(1, id);
            int rows = statement.executeUpdate();

            return rows;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    private OrderItem toOrderItem(ResultSet result) {
        try {
            Product product = DaoFactory.getProductDao().findById(result.getLong("product_id"));
            return new OrderItem(result.getLong("id"), product,
                    result.getInt("quantity"));
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }
}
