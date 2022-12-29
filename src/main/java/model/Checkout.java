package model;

import com.mysql.cj.x.protobuf.MysqlxCrud;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
public class Checkout {

    private Long id;

    private List<OrderItem> orderItems;

    private Double totalPrice;

    public Checkout(List<OrderItem> orderItems, Double totalPrice) {
        this.orderItems = orderItems;
        this.totalPrice = totalPrice;
    }

    public Double getTotalPrice() {
        totalPrice = 0D;
        for(OrderItem orderItem: orderItems) {
            totalPrice += orderItem.getProduct().getPrice();
        }
        return totalPrice;
    }

    @Override
    public String toString() {
        return "Checkout{" +
                "id=" + id +
                ", orderItems=" + orderItems +
                ", totalPrice=" + totalPrice +
                '}';
    }
}
