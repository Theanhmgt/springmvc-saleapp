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
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author admin
 */
@Controller
@ControllerAdvice // chia sẻ ModelAtrribute cho các controler khác (@Controller)
public class IndexController {
    @Autowired
    private CategoryService categoryService;
    
    @Autowired
    private ProductService prodService;
    
    @ModelAttribute // tất cả các response trong Indexcontroller đều có giá trị khai báo trong hàm này
    public void commonAttr(Model model) {
        model.addAttribute("categories",this.categoryService.getCate());
    }
    
    @RequestMapping("/")
    public String index(Model model,@RequestParam Map<String, String> params) {
        model.addAttribute("products", this.prodService.getProducts(params));
        return "index";
    }
    
    
}
