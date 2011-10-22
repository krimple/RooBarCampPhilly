package org.barcamp.events.web;

import org.barcamp.events.models.ClassSession;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/classsessions")
@Controller
@RooWebScaffold(path = "classsessions", formBackingObject = ClassSession.class)
public class ClassSessionsController {
}
