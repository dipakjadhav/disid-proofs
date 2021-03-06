// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.proofs.service.impl;

import com.disid.proofs.domain.Agent;
import com.disid.proofs.repository.AgentRepository;
import com.disid.proofs.service.impl.AgentServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AgentServiceImpl_Roo_Service_Impl {
    
    declare @type: AgentServiceImpl: @Service;
    
    declare @type: AgentServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private AgentRepository AgentServiceImpl.agentRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param agentRepository
     */
    @Autowired
    public AgentServiceImpl.new(AgentRepository agentRepository) {
        setAgentRepository(agentRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return AgentRepository
     */
    public AgentRepository AgentServiceImpl.getAgentRepository() {
        return agentRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param agentRepository
     */
    public void AgentServiceImpl.setAgentRepository(AgentRepository agentRepository) {
        this.agentRepository = agentRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param agent
     */
    @Transactional
    public void AgentServiceImpl.delete(Agent agent) {
        getAgentRepository().delete(agent);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Agent> AgentServiceImpl.save(Iterable<Agent> entities) {
        return getAgentRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void AgentServiceImpl.delete(Iterable<Long> ids) {
        List<Agent> toDelete = getAgentRepository().findAll(ids);
        getAgentRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Agent
     */
    @Transactional
    public Agent AgentServiceImpl.save(Agent entity) {
        return getAgentRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Agent
     */
    public Agent AgentServiceImpl.findOne(Long id) {
        return getAgentRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Agent
     */
    public Agent AgentServiceImpl.findOneForUpdate(Long id) {
        return getAgentRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Agent> AgentServiceImpl.findAll(Iterable<Long> ids) {
        return getAgentRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Agent> AgentServiceImpl.findAll() {
        return getAgentRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long AgentServiceImpl.count() {
        return getAgentRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Agent> AgentServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getAgentRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Agent> AgentServiceImpl.getEntityType() {
        return Agent.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> AgentServiceImpl.getIdType() {
        return Long.class;
    }
    
}
