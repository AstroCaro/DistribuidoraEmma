package controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Checkout;
import model.OrderItem;
import model.Product;
import service.CheckoutService;
import service.OrderItemService;
import service.ProductService;

@WebServlet("/products/list.do")

public class ListProductServlet extends HttpServlet implements Servlet {

    private static final long serialVersionUID = -6068564252281199071L;
    private ProductService productService;
    private CheckoutService checkoutService;

    @Override
    public void init() throws ServletException {
        super.init();
        this.productService = new ProductService();
        this.checkoutService = new CheckoutService();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = productService.findAll();
        req.setAttribute("products", products);
        Checkout checkout = checkoutService.findById(1l);
        req.setAttribute("checkout", checkout);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/shopping.jsp");
        dispatcher.forward(req, resp);

    }
}