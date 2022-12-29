package controller;

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

import java.io.IOException;

@WebServlet("/products/addOrderItem.do")
public class AddOrderItemServlet extends HttpServlet implements Servlet {

    private static final long serialVersionUID = -3480177878957973545L;

    OrderItemService orderItemService;
    CheckoutService checkoutService;

    @Override
    public void init() throws ServletException {
        super.init();
        orderItemService = new OrderItemService();
        checkoutService = new CheckoutService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long productId = Long.parseLong(req.getParameter("productId"));
        OrderItem orderItem = orderItemService.add(productId, 1);
        checkoutService.addOrderItemToCheckout(orderItem, 1L);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/products/list.do");
        dispatcher.forward(req, resp);
    }
}
