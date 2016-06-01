// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.service.impl;

import com.disid.restful.model.Product;
import com.disid.restful.repository.GlobalSearch;
import com.disid.restful.repository.ProductRepository;
import com.disid.restful.service.api.ProductService;
import com.disid.restful.service.impl.ProductServiceImpl;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProductServiceImpl_Roo_Service_Impl {
    
    declare parents: ProductServiceImpl implements ProductService;
    
    declare @type: ProductServiceImpl: @Service;
    
    declare @type: ProductServiceImpl: @Transactional(readOnly = true);
    
    public ProductRepository ProductServiceImpl.productRepository;
    
    @Transactional(readOnly = false)
    public Product ProductServiceImpl.save(Product entity) {
        return productRepository.save(entity);
    }
    
    @Transactional(readOnly = false)
    public void ProductServiceImpl.delete(Long id) {
         productRepository.delete(id);
    }
    
    @Transactional(readOnly = false)
    public List<Product> ProductServiceImpl.save(Iterable<Product> entities) {
        return productRepository.save(entities);
    }
    
    @Transactional(readOnly = false)
    public void ProductServiceImpl.delete(Iterable<Long> ids) {
        List<Product> toDelete = productRepository.findAll(ids);
        productRepository.deleteInBatch(toDelete);
    }
    
    public List<Product> ProductServiceImpl.findAll() {
        return productRepository.findAll();
    }
    
    public List<Product> ProductServiceImpl.findAll(Iterable<Long> ids) {
        return productRepository.findAll(ids);
    }
    
    public Product ProductServiceImpl.findOne(Long id) {
        return productRepository.findOne(id);
    }
    
    public long ProductServiceImpl.count() {
        return productRepository.count();
    }
    
    public Page<Product> ProductServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return productRepository.findAll(globalSearch, pageable);
    }
    
}
