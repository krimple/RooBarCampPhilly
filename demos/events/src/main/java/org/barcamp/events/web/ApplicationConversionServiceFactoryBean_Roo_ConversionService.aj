// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.barcamp.events.web;

import org.barcamp.events.models.ClassSession;
import org.barcamp.events.services.ClassSessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    ClassSessionService ApplicationConversionServiceFactoryBean.classSessionService;
    
    public Converter<ClassSession, java.lang.String> ApplicationConversionServiceFactoryBean.getClassSessionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<org.barcamp.events.models.ClassSession, java.lang.String>() {
            public String convert(ClassSession classSession) {
                return classSession.getDisplayString();
            }
        };
    }
    
    public Converter<java.lang.Long, ClassSession> ApplicationConversionServiceFactoryBean.getIdToClassSessionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, org.barcamp.events.models.ClassSession>() {
            public org.barcamp.events.models.ClassSession convert(java.lang.Long id) {
                return classSessionService.findClassSession(id);
            }
        };
    }
    
    public Converter<java.lang.String, ClassSession> ApplicationConversionServiceFactoryBean.getStringToClassSessionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, org.barcamp.events.models.ClassSession>() {
            public org.barcamp.events.models.ClassSession convert(String id) {
                return getObject().convert(getObject().convert(id, java.lang.Long.class), ClassSession.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getClassSessionToStringConverter());
        registry.addConverter(getIdToClassSessionConverter());
        registry.addConverter(getStringToClassSessionConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
