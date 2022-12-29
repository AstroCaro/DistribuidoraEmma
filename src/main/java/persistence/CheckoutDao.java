package persistence;

import model.Checkout;
import model.OrderItem;
import model.Product;

import java.util.List;

public interface CheckoutDao {

    List<Checkout> findAll();

    Checkout findById(Long id);

    Checkout updatePrice(Long checkoutId);

    int addOrderItemToCheckout(OrderItem orderItem);

    int deleteOrderItemToCheckout(Long orderItemId);
}
