package persistence.commons;

import persistence.CheckoutDao;
import persistence.OrderItemDao;
import persistence.ProductDao;
import persistence.impl.CheckoutDaoImpl;
import persistence.impl.OrderItemDaoImpl;
import persistence.impl.ProductDaoImpl;

public class DaoFactory {
    public static ProductDao getProductDao() {
        return new ProductDaoImpl();
    }

    public static OrderItemDao getOrderItemDao() {
    return new OrderItemDaoImpl();
    }

    public static CheckoutDao getCheckoutDao() {
        return new CheckoutDaoImpl();
    }
}
