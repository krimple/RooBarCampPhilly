package org.barcamp.events.db;

import org.barcamp.events.models.ClassSession;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = ClassSession.class)
public interface ClassSessionRepository {
}
