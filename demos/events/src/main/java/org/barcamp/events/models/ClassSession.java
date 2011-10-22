package org.barcamp.events.models;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.displaystring.RooDisplayString;
import org.springframework.roo.addon.entity.RooJpaActiveRecord;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooDisplayString
@RooJpaActiveRecord
public class ClassSession {

    @NotNull
    @Column(unique = true)
    @Size(max = 25)
    private String name;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date runDate;
}
