package com.java_shop.service.impl;

import com.java_shop.exception.ResourceNotFoundException;
import com.java_shop.model.Product;
import com.java_shop.repository.ProductRepository;
import com.java_shop.service.ProductService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;

    public ProductServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public List<Product> readAllProducts() {
        return this.productRepository.findAll();
    }

    @Override
    public Optional<Product> getProductById(Long id) {
        return this.productRepository.findById(id);
    }

    @Override
    public Product saveProduct(Product product) {
        return this.productRepository.save(product);
    }

    @Override
    public Product updateProduct(Product product) {
        Optional<Product> productOptional = getProductById(product.getId());

        productOptional.orElseThrow(() -> new ResourceNotFoundException("Obiectul cu id-ul " + product.getId() + " nu a fost gasit"));

        return this.productRepository.save(product);
    }

    @Override
    public void deleteProductById(Long id) {
        Optional<Product> productOptional = getProductById(id);

        productOptional.orElseThrow(() -> new ResourceNotFoundException("Obiectul cu id-ul " +id + " nu a fost gasit"));

        this.productRepository.deleteById(id);
    }
}
