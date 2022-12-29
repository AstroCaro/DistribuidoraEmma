package service;

import model.Checkout;
import model.OrderItem;
import persistence.commons.DaoFactory;

import java.util.List;

public class CheckoutService {

    public List<Checkout> findAll() {
        return DaoFactory.getCheckoutDao().findAll();
    }

    public Checkout findById(Long id) {
        return DaoFactory.getCheckoutDao().findById(id);
    }

    public Checkout addOrderItemToCheckout(OrderItem orderItem, Long checkoutId) {
        DaoFactory.getCheckoutDao().addOrderItemToCheckout(orderItem);
        return DaoFactory.getCheckoutDao().updatePrice(checkoutId);
    }

    public Checkout deleteOrderItemToCheckout(Long orderItemId, Long checkoutId) {
        DaoFactory.getOrderItemDao().deleteById(orderItemId);
        DaoFactory.getCheckoutDao().deleteOrderItemToCheckout(orderItemId);
        return DaoFactory.getCheckoutDao().updatePrice(checkoutId);
    }


}
