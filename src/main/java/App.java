import model.Product;
import persistence.commons.DaoFactory;

import java.util.List;

public class App {
    public static void main(String[] args) {
        List<Product> r = DaoFactory.getProductDao().findAll();
        System.out.println(r);
    }
}
