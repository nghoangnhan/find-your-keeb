package com.nhnhan.find_your_keeb.service;

import com.nhnhan.find_your_keeb.dto.ProductFilterRequest;
import com.nhnhan.find_your_keeb.dto.ProductRequest;
import com.nhnhan.find_your_keeb.entity.KeyboardLayout;
import com.nhnhan.find_your_keeb.entity.Product;
import com.nhnhan.find_your_keeb.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public Page<Product> getAllProducts(ProductFilterRequest filterRequest) {
        Pageable pageable = createPageable(filterRequest);
        
        // Apply filters
        if (filterRequest.getLayout() != null && filterRequest.getBrand() != null && 
            filterRequest.getMinPrice() != null && filterRequest.getMaxPrice() != null) {
            return productRepository.findByLayoutAndBrandAndPriceBetween(
                    filterRequest.getLayout(), filterRequest.getBrand(), 
                    filterRequest.getMinPrice(), filterRequest.getMaxPrice(), pageable);
        } else if (filterRequest.getLayout() != null && filterRequest.getBrand() != null) {
            return productRepository.findByLayoutAndBrand(filterRequest.getLayout(), 
                    filterRequest.getBrand(), pageable);
        } else if (filterRequest.getLayout() != null && filterRequest.getMinPrice() != null && 
                   filterRequest.getMaxPrice() != null) {
            return productRepository.findByLayoutAndPriceBetween(filterRequest.getLayout(), 
                    filterRequest.getMinPrice(), filterRequest.getMaxPrice(), pageable);
        } else if (filterRequest.getBrand() != null && filterRequest.getMinPrice() != null && 
                   filterRequest.getMaxPrice() != null) {
            return productRepository.findByBrandAndPriceBetween(filterRequest.getBrand(), 
                    filterRequest.getMinPrice(), filterRequest.getMaxPrice(), pageable);
        } else if (filterRequest.getLayout() != null) {
            return productRepository.findByLayout(filterRequest.getLayout(), pageable);
        } else if (filterRequest.getBrand() != null) {
            return productRepository.findByBrand(filterRequest.getBrand(), pageable);
        } else if (filterRequest.getMinPrice() != null && filterRequest.getMaxPrice() != null) {
            return productRepository.findByPriceBetween(filterRequest.getMinPrice(), 
                    filterRequest.getMaxPrice(), pageable);
        } else if (filterRequest.getSearchTerm() != null && !filterRequest.getSearchTerm().isEmpty()) {
            return productRepository.findByNameContainingIgnoreCase(filterRequest.getSearchTerm(), pageable);
        } else if (filterRequest.getSwitchType() != null) {
            return productRepository.findBySwitchType(filterRequest.getSwitchType(), pageable);
        } else if (filterRequest.getRgbSupport() != null && filterRequest.getRgbSupport()) {
            return productRepository.findByRgbSupportTrue(pageable);
        } else if (filterRequest.getWirelessSupport() != null && filterRequest.getWirelessSupport()) {
            return productRepository.findByWirelessSupportTrue(pageable);
        }
        
        return productRepository.findAll(pageable);
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Product not found"));
    }

    public Product createProduct(ProductRequest request) {
        Product product = new Product();
        product.setName(request.getName());
        product.setDescription(request.getDescription());
        product.setPrice(request.getPrice());
        product.setBrand(request.getBrand());
        product.setLayout(request.getLayout());
        product.setSwitchType(request.getSwitchType());
        product.setKeycapMaterial(request.getKeycapMaterial());
        product.setCaseMaterial(request.getCaseMaterial());
        product.setRgbSupport(request.getRgbSupport());
        product.setWirelessSupport(request.getWirelessSupport());
        product.setStockQuantity(request.getStockQuantity());
        product.setImageUrl(request.getImageUrl());
        
        return productRepository.save(product);
    }

    public Product updateProduct(Long id, ProductRequest request) {
        Product product = getProductById(id);
        product.setName(request.getName());
        product.setDescription(request.getDescription());
        product.setPrice(request.getPrice());
        product.setBrand(request.getBrand());
        product.setLayout(request.getLayout());
        product.setSwitchType(request.getSwitchType());
        product.setKeycapMaterial(request.getKeycapMaterial());
        product.setCaseMaterial(request.getCaseMaterial());
        product.setRgbSupport(request.getRgbSupport());
        product.setWirelessSupport(request.getWirelessSupport());
        product.setStockQuantity(request.getStockQuantity());
        product.setImageUrl(request.getImageUrl());
        
        return productRepository.save(product);
    }

    public void deleteProduct(Long id) {
        Product product = getProductById(id);
        productRepository.delete(product);
    }

    public List<String> getAllBrands() {
        return productRepository.findAllBrands();
    }

    public Page<Product> getProductsWithStock(Integer minQuantity, Pageable pageable) {
        return productRepository.findByStockQuantityGreaterThan(minQuantity, pageable);
    }

    private Pageable createPageable(ProductFilterRequest filterRequest) {
        Sort sort = Sort.by(
                filterRequest.getSortDirection().equalsIgnoreCase("desc") ? 
                        Sort.Direction.DESC : Sort.Direction.ASC,
                filterRequest.getSortBy()
        );
        return PageRequest.of(filterRequest.getPage(), filterRequest.getSize(), sort);
    }
} 