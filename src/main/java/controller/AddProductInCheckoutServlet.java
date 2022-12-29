package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import service.CheckoutService;
import service.ProductService;

@WebServlet("/products/addProductToCheckout.do")
public class AddProductInCheckoutServlet extends HttpServlet implements Servlet {

    private static final long serialVersionUID = -3480177878957973545L;

    CheckoutService checkoutService;
    ProductService productService;

    @Override
    public void init() throws ServletException {
        super.init();
        checkoutService = new CheckoutService();
        productService = new ProductService();
    }

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        Long id = Long.parseLong(req.getParameter("id"));
//        Product product = productService.findById(id);
//
//        checkoutService.addProduct(product);
//        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/products/list.do");
//        dispatcher.forward(req, resp);
//
//    }
}
