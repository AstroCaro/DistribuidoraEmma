package service;

import model.OrderItem;
import model.Product;
import persistence.commons.DaoFactory;

import java.util.List;

public class OrderItemService {

    public List<OrderItem> findAll() {
        return DaoFactory.getOrderItemDao().findAll();
    }

    public OrderItem findById(Long id) {
        return DaoFactory.getOrderItemDao().findById(id);
    }

    public OrderItem add(Long productId, Integer quantity) {
        Product product = DaoFactory.getProductDao().findById(productId);
        OrderItem orderItem = new OrderItem(product, quantity);
        DaoFactory.getOrderItemDao().insert(orderItem);
        return orderItem;
    }

    public void update(OrderItem orderItem) {
        DaoFactory.getOrderItemDao().updateQuantity(orderItem);
    }

    public void deleteById(Long id) {
        DaoFactory.getOrderItemDao().deleteById(id);
    }

}
