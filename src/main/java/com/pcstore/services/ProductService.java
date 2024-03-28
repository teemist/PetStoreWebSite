package com.pcstore.services;

import com.pcstore.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;
    {
        products.add(new Product(++ID, "RTX 4060", "Видеокарта MSI RTX 4060 8GB", 32990));
        products.add(new Product(++ID, "DDR4 8GB", "ОЗУ Gigabyte DDR4 8GB", 2990));
        products.add(new Product(++ID, "Ryzen 5500", "Процессор AMD Ryzen 5500", 5990));
    }

    public List<Product> productList(){
        return products;
    }
}