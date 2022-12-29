package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import service.CheckoutService;
import service.OrderItemService;
import service.ProductService;

import java.io.IOException;

@WebServlet("/products/deleteOrderItem.do")
public class DeleteProductInCheckoutServlet extends HttpServlet implements Servlet {

    private static final long serialVersionUID = -3480177878957973545L;

    OrderItemService orderItemService;
    CheckoutService checkoutService;

    @Override
    public void init() throws ServletException {
        super.init();
        checkoutService = new CheckoutService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        checkoutService.deleteOrderItemToCheckout(id, 1L);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/products/list.do");
        dispatcher.forward(req, resp);
    }

}
