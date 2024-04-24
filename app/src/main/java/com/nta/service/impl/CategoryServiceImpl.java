/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nta.service.impl;

import com.nta.pojo.Category;
import com.nta.repository.CategoryRepository;
import com.nta.service.CategoryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author admin
 */
@Service
public class CategoryServiceImpl implements CategoryService{
    @Autowired
    private CategoryRepository cateRepo;
    @Override
    public List<Category> getCate() {
        return this.cateRepo.getCate();
    }
    
    
}
