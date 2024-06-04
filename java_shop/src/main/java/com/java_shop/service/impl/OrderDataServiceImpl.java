package com.java_shop.service.impl;

import com.java_shop.exception.BadRequestException;
import com.java_shop.exception.ResourceNotFoundException;
import com.java_shop.model.OrderData;
import com.java_shop.model.PaymentStatus;
import com.java_shop.repository.OrderDataRepository;
import com.java_shop.service.OrderDataService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderDataServiceImpl implements OrderDataService {

    private final OrderDataRepository orderDataRepository;

    public OrderDataServiceImpl(OrderDataRepository orderDataRepository) {
        this.orderDataRepository = orderDataRepository;
    }

    @Override
    public List<OrderData> getAllOrders() {
        return this.orderDataRepository.findAll();
    }

    @Override
    public Optional<OrderData> getOrderById(Long id) {
        return this.orderDataRepository.findById(id);
    }

    @Override
    public OrderData saveOrder(OrderData order) {
        if (order == null) {
            throw new BadRequestException("Order-ul nu este valid");
        }
        if (order.getCustomer() == null) {
            throw new BadRequestException("Clientul nu este invalid");
        }
        if (order.getProductList() == null || order.getProductList().isEmpty()) {
            throw new BadRequestException("Lipsesc produse din comanda");
        }
        return this.orderDataRepository.save(order);


    }

    @Override
    public OrderData updateOrder(OrderData order) {
        if (order == null) {
            throw new BadRequestException("Order-ul nu este valid");
        }
        if (order.getId() == null) {
            throw new BadRequestException("Id-ul nu este valid");
        }
        if (order.getCustomer() == null) {
            throw new BadRequestException("Clientul nu este invalid");
        }
        if (order.getProductList() == null || order.getProductList().isEmpty()) {
            throw new BadRequestException("Lipsesc produse din comanda");
        }

        Optional<OrderData> optionalOrderData = getOrderById(order.getId());

        optionalOrderData.orElseThrow(() -> new ResourceNotFoundException("Orderul nu exista in baza de date"));

        return this.orderDataRepository.save(order);
    }

    @Override
    public void deleteOrderById(Long id) {
        Optional<OrderData> optionalOrderData = getOrderById(id);

        optionalOrderData.orElseThrow(() -> new ResourceNotFoundException("Orderul nu exista in baza de date"));

        this.orderDataRepository.deleteById(id);
    }

    @Override
    public void confirmOrderById(Long id) {
        Optional<OrderData> optionalOrderData = getOrderById(id);

        optionalOrderData.orElseThrow(() -> new ResourceNotFoundException("Orderul nu exista in baza de date"));

        OrderData order = optionalOrderData.get();

        order.setPaymentStatus(PaymentStatus.CONFIRMED);

        this.orderDataRepository.save(order);
    }

    @Override
    public void cancelOrderById(Long id) {
        Optional<OrderData> optionalOrderData = getOrderById(id);

        optionalOrderData.orElseThrow(() -> new ResourceNotFoundException("Orderul nu exista in baza de date"));

        OrderData order = optionalOrderData.get();

        order.setPaymentStatus(PaymentStatus.CANCELED);

        this.orderDataRepository.save(order);
    }
}
