package com.java_shop.controller;

import com.java_shop.exception.BadRequestException;
import com.java_shop.exception.ResourceNotFoundException;
import com.java_shop.model.Product;
import com.java_shop.service.ProductService;
import com.java_shop.utils.ApiResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@CrossOrigin("http://localhost:4200")
@RequestMapping("/api/products")
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping()
    public ResponseEntity<ApiResponse> getAllProducts() {
        List<Product> products = this.productService.readAllProducts();

        return ResponseEntity.ok(ApiResponse.success("Produsele au fost afisate", products));
    }

    @GetMapping("/productById/{id}")
    public ResponseEntity<ApiResponse> getProductById(@PathVariable(name = "id") Long id) {
        Optional<Product> productOptional = this.productService.getProductById(id);

        productOptional.orElseThrow(() -> new ResourceNotFoundException(" Produsul ncu id-ul " + id + " nu a fost gasit"));

        return ResponseEntity.ok(ApiResponse.success("Produsul a fost gasit" , productOptional.get()));
    }

    @PostMapping("/addProduct")
    public ResponseEntity<ApiResponse> saveProduct(@RequestBody Product product) {
        if (product == null ) {
            throw new BadRequestException(" Produsul nu este valid");
        }
        Product savedProduct = this.productService.saveProduct(product);

        return ResponseEntity.ok(ApiResponse.success(" Produsul a fost salvat cu succes", savedProduct));
    }
    @PutMapping("/updateProduct")
    public ResponseEntity<ApiResponse> updateProduct(@RequestBody Product product) {
        if (product == null || product.getId() == null){
            throw new BadRequestException(" Produsul nu este valid");
        }
        Product updatedProduct = this.productService.updateProduct(product);

        return ResponseEntity.ok(ApiResponse.success(" Produsul a fost modificat cu succes", updatedProduct));
    }

    @DeleteMapping("/deleteProduct/{id}")
    public  ResponseEntity<ApiResponse> deleteProductById(@PathVariable(name = "id") Long id) {
        this.productService.deleteProductById(id);

        return ResponseEntity.ok(ApiResponse.success(" Produsul a fost sters cu succes", null));
    }
}
