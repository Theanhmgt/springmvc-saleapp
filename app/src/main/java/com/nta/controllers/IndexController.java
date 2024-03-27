/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nta.controllers;

import com.nta.service.CategoryService;
import com.nta.service.ProductService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author admin
 */
@Controller
public class IndexController {
    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private ProductService prodService;
    @RequestMapping("/")
    public String index(Model model,@RequestParam Map<String, String> params) {
        model.addAttribute("categories",this.categoryService.getCate());
        model.addAttribute("products", this.prodService.getProducts(params));
        return "index";
    }
}
