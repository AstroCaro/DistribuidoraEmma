package persistence.impl;

import model.Checkout;
import model.OrderItem;
import persistence.commons.ConnectionProvider;
import persistence.commons.DaoFactory;
import persistence.commons.MissingDataException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CheckoutDaoImpl implements persistence.CheckoutDao {

    @Override
    public List<Checkout> findAll() {
        try {
            String sql = "SELECT * FROM checkouts;";
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet results = statement.executeQuery();

            List<Checkout> checkouts = new ArrayList<Checkout>();
            while (results.next()) {
                checkouts.add(toCheckout(results));
            }
            return checkouts;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public Checkout findById(Long id) {
        try {
            String sql = "SELECT * FROM checkouts WHERE id = ?;";
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setLong(1, id);
            statement.setLong(1, id);
            ResultSet result = statement.executeQuery();

            Checkout checkout = null;
            if (result.next()) {
                checkout = toCheckout(result);
            }
            return checkout;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public Checkout updatePrice(Long checkoutId) {
        try {
            String sql = "UPDATE checkouts SET total_price = ? WHERE id = ?;";
            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);

            List<OrderItem> orderItems = listOrderItems(checkoutId);
            Checkout checkout = findById(checkoutId);
            checkout.setOrderItems(orderItems);
            statement.setDouble(1, checkout.getTotalPrice());
            statement.setLong(2, checkoutId);
            statement.executeUpdate();
            return checkout;

        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public int addOrderItemToCheckout(OrderItem orderItem) {
        try {
            String sql = "INSERT INTO checkouts_order_items VALUES (?, ?);";

            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setLong(1, 1);
            statement.setLong(2, orderItem.getId());
            int rows = statement.executeUpdate();
            return rows;

        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    @Override
    public int deleteOrderItemToCheckout(Long orderItemId) {
        try {
            String sql = "DELETE FROM checkouts_order_items WHERE order_item_id = ?";
            Connection conn = ConnectionProvider.getConnection();

            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setLong(1, orderItemId);
            int rows = statement.executeUpdate();

            return rows;
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    private List<OrderItem> listOrderItems(Long id) {
        try {
            List<OrderItem> orderItems = new ArrayList<OrderItem>();
            String sql = "SELECT order_item_id FROM checkouts_order_items WHERE checkout_id = ?;";

            Connection conn = ConnectionProvider.getConnection();
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setLong(1, id);
            ResultSet results = statement.executeQuery();
            while (results.next()) {
                orderItems.add(DaoFactory.getOrderItemDao().findById(results.getLong("order_item_id")));
            }
            System.out.println(orderItems);
            return orderItems;

        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

    private Checkout toCheckout(ResultSet result) {
        try {
            List<OrderItem> orderItems = listOrderItems(result.getLong("id"));
            return new Checkout(orderItems,
                    result.getDouble("total_price"));
        } catch (Exception e) {
            throw new MissingDataException(e);
        }
    }

}


