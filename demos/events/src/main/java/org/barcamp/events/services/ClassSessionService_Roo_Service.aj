// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.barcamp.events.services;

import java.util.List;
import org.barcamp.events.models.ClassSession;

privileged aspect ClassSessionService_Roo_Service {
    
    public abstract long ClassSessionService.countAllClassSessions();    
    public abstract void ClassSessionService.deleteClassSession(ClassSession classSession);    
    public abstract ClassSession ClassSessionService.findClassSession(java.lang.Long id);    
    public abstract List<ClassSession> ClassSessionService.findAllClassSessions();    
    public abstract List<ClassSession> ClassSessionService.findClassSessionEntries(int firstResult, int maxResults);    
    public abstract void ClassSessionService.saveClassSession(ClassSession classSession);    
    public abstract ClassSession ClassSessionService.updateClassSession(ClassSession classSession);    
}