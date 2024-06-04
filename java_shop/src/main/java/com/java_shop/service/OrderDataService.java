package com.java_shop.service;

import com.java_shop.model.OrderData;

import java.util.List;
import java.util.Optional;


public interface OrderDataService {

    List<OrderData> getAllOrders();

    Optional<OrderData> getOrderById(Long id);

    OrderData saveOrder(OrderData order);

    OrderData updateOrder(OrderData order);

    void deleteOrderById(Long id);

    void confirmOrderById(Long id);

    void cancelOrderById(Long id);
}
