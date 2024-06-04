package com.java_shop.service.impl;

import com.java_shop.dto.LoginDto;
import com.java_shop.dto.RegisterDto;
import com.java_shop.exception.BadRequestException;
import com.java_shop.exception.ResourceNotFoundException;
import com.java_shop.model.Customer;
import com.java_shop.model.UserRole;
import com.java_shop.service.AuthService;
import com.java_shop.service.CustomerService;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AuthServiceImpl implements AuthService {

    private final CustomerService customerService;

    public AuthServiceImpl(CustomerService customerService) {
        this.customerService = customerService;
    }

    @Override
    public Customer login(LoginDto loginDto) {

        if (loginDto == null) {
            throw new BadRequestException("Datele nu sunt valide");
        }

        if (loginDto.getEmail() == null || loginDto.getEmail().isBlank()) {
            throw new BadRequestException("Email nu este valid");
        }

        if (loginDto.getPassword() == null || loginDto.getPassword().isBlank()) {
            throw new BadRequestException("Parola nu este valida");
        }

        Optional<Customer> customerOptional = this.customerService.getCustomerByEmail(loginDto.getEmail());

        customerOptional.orElseThrow(() -> new ResourceNotFoundException("Nu exista cont cu aceasta adresa de email "));
        System.out.println(loginDto.getPassword());

        boolean isMatch = BCrypt.checkpw(loginDto.getPassword(), customerOptional.get().getPassword());

        if (!isMatch) {
            throw new BadRequestException("Parola este incorecta");
        }

        return customerOptional.get();
    }

    @Override
    public Customer register(RegisterDto registerDto) {
        if (registerDto == null) {
            throw new BadRequestException("Datele nu sunt valide");
        }

        if (registerDto.getUsername() == null || registerDto.getUsername().isBlank()) {
            throw new BadRequestException("Username nu este valid");
        }

        if (registerDto.getEmail() == null || registerDto.getEmail().isBlank()) {
            throw new BadRequestException("Email nu este valid");
        }

        if (registerDto.getPassword() == null || registerDto.getPassword().isBlank()) {
            throw new BadRequestException("Parola nu este valida");
        }

        if (registerDto.getReTypePassword() == null || registerDto.getReTypePassword().isBlank()) {
            throw new BadRequestException("Confirmarea parolei este invalida");
        }

        if (!registerDto.getPassword().equals(registerDto.getReTypePassword())) {
            throw new BadRequestException("Parolele nu sunt egale");
        }

        Customer customer = new Customer();
        customer.setName(registerDto.getUsername());
        customer.setEmail(registerDto.getEmail());

        customer.setPassword(registerDto.getPassword());

        customer.setUserRole(UserRole.ADMIN);

        return this.customerService.saveCustomer(customer);

    }
}



