// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.springframework.roo.petclinic.domain.dod;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.roo.petclinic.domain.Visit;
import org.springframework.roo.petclinic.domain.dod.VisitDataOnDemand;
import org.springframework.roo.petclinic.domain.dod.VisitFactory;

privileged aspect VisitDataOnDemand_Roo_JpaDataOnDemand {
    
    /**
     * Random generator for the entities index.
     * 
     */
    private Random VisitDataOnDemand.rnd = new SecureRandom();
    
    /**
     * List of created entities.
     * 
     */
    private List<Visit> VisitDataOnDemand.data;
    
    /**
     * EntityManager to persist the entities.
     * 
     */
    private EntityManager VisitDataOnDemand.entityManager;
    
    /**
     * Number of elements to create and persist.
     * 
     */
    private int VisitDataOnDemand.size;
    
    /**
     * Factory to create entity instances.
     * 
     */
    private VisitFactory VisitDataOnDemand.factory = new VisitFactory();
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param entityManager
     */
    public VisitDataOnDemand.new(EntityManager entityManager) {
        this(entityManager, 10);
    }

    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param entityManager
     * @param size
     */
    public VisitDataOnDemand.new(EntityManager entityManager, int size) {
        setEntityManager(entityManager);
        setSize(size);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return Random
     */
    public Random VisitDataOnDemand.getRnd() {
        return rnd;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param rnd
     */
    public void VisitDataOnDemand.setRnd(Random rnd) {
        this.rnd = rnd;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Visit> VisitDataOnDemand.getData() {
        return data;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param data
     */
    public void VisitDataOnDemand.setData(List<Visit> data) {
        this.data = data;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return EntityManager
     */
    public EntityManager VisitDataOnDemand.getEntityManager() {
        return entityManager;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entityManager
     */
    public void VisitDataOnDemand.setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public int VisitDataOnDemand.getSize() {
        return size;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param size
     */
    public void VisitDataOnDemand.setSize(int size) {
        this.size = size;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return VisitFactory
     */
    public VisitFactory VisitDataOnDemand.getFactory() {
        return factory;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param factory
     */
    public void VisitDataOnDemand.setFactory(VisitFactory factory) {
        this.factory = factory;
    }
    
    /**
     * Creates a new transient Visit in a random index out of the initial list of the created entities,
     * with an index greater than {@link VisitDataOnDemand#getSize()} - 1.
     * 
     * @return Visit the generated transient {@link Visit}
     */
    public Visit VisitDataOnDemand.getNewRandomTransientVisit() {
        int randomIndex = getSize() + getRnd().nextInt(Integer.MAX_VALUE - getSize());
        return getFactory().create(randomIndex);
    }
    
    /**
     * Returns a generated and persisted {@link Visit} in a given index.
     * 
     * @param index the position of the {@link Visit} to return
     * @return Visit the specific {@link Visit}
     */
    public Visit VisitDataOnDemand.getSpecificVisit(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (getData().size() - 1)) {
            index = getData().size() - 1;
        }
        return getData().get(index);
    }
    
    /**
     * Returns a generated and persisted {@link Visit} in a random index.
     * 
     * @return Visit a random {@link Visit}
     */
    public Visit VisitDataOnDemand.getRandomVisit() {
        init();
        return getData().get(getRnd().nextInt(getData().size()));
    }
    
    /**
     * Creates the initial list of generated entities.
     * 
     */
    public void VisitDataOnDemand.init() {
        int from = 0;
        int to = 10;
        
        CriteriaBuilder cb = getEntityManager().getCriteriaBuilder();
        CriteriaQuery<Visit> cq = cb.createQuery(Visit.class);
        Root<Visit> rootEntry = cq.from(Visit.class);
        CriteriaQuery<Visit> all = cq.select(rootEntry);
        TypedQuery<Visit> allQuery = 
            getEntityManager().createQuery(all).setFirstResult(from).setMaxResults(to);
        setData(allQuery.getResultList());
        if (getData() == null) {
            throw new IllegalStateException(
                "Find entries implementation for 'Visit' illegally returned null");
        }
        if (!getData().isEmpty()) {
            return;
        }
        
        setData(new ArrayList<Visit>());
        for (int i = from; i < to; i++) {
            Visit obj = getFactory().create(i);
            try {
                getEntityManager().persist(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter
                      .hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".")
                    .append(cv.getPropertyPath()).append(": ").append(cv.getMessage())
                    .append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            getEntityManager().flush();
            getData().add(obj);
        }
    }
    
}