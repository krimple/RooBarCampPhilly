// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.barcamp.events.services;

import java.util.List;
import org.barcamp.events.db.ClassSessionRepository;
import org.barcamp.events.models.ClassSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ClassSessionServiceImpl_Roo_Service {
    
    declare @type: ClassSessionServiceImpl: @Service;
    
    declare @type: ClassSessionServiceImpl: @Transactional;
    
    @Autowired
    ClassSessionRepository ClassSessionServiceImpl.classSessionRepository;
    
    public long ClassSessionServiceImpl.countAllClassSessions() {
        return classSessionRepository.count();
    }
    
    public void ClassSessionServiceImpl.deleteClassSession(ClassSession classSession) {
        classSessionRepository.delete(classSession);
    }
    
    public ClassSession ClassSessionServiceImpl.findClassSession(java.lang.Long id) {
        return classSessionRepository.findOne(id);
    }
    
    public List<ClassSession> ClassSessionServiceImpl.findAllClassSessions() {
        return classSessionRepository.findAll();
    }
    
    public List<ClassSession> ClassSessionServiceImpl.findClassSessionEntries(int firstResult, int maxResults) {
        return classSessionRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void ClassSessionServiceImpl.saveClassSession(ClassSession classSession) {
        classSessionRepository.save(classSession);
    }
    
    public ClassSession ClassSessionServiceImpl.updateClassSession(ClassSession classSession) {
        return classSessionRepository.save(classSession);
    }
    
}
