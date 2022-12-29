package persistence;

import model.OrderItem;

import java.util.List;

public interface OrderItemDao {
    OrderItem findById(Long id);

    List<OrderItem> findAll();

    int insert(OrderItem orderItem);

    int updateQuantity(OrderItem orderItem);

    int deleteById(Long id);
}
