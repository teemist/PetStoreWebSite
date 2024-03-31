package com.pcstore.controllers;

import com.pcstore.models.Product;
import com.pcstore.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;
    @GetMapping("/")
    public String products(String name, Model model){
        model.addAttribute("products", productService.productList(name));
        return "/products";
    }
    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable long id, Model model){
        model.addAttribute("product", productService.getProductById(id));
        return "/product";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id){
        productService.deleteProductById(id);
        return "redirect:/";
    }
    @PostMapping("/product/new")
    public String createProduct(Product product){
        productService.saveProduct(product);
        return "redirect:/";
    }
}
