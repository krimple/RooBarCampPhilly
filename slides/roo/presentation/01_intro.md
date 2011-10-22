!SLIDE 
# Spring Roo #
## Developer Productivity Rocks ##

!SLIDE 

# Who am I? #
## Ken Rimple ##
### Consultant, Mentor, Trainer, 
Jazz Drummer, Photographer, Attribute Dropper 

!SLIDE
# Topics #

* What is Roo?
* Roo for database productivity
* Roo for web productivity
* Digging Deeper 
* What's in 1.2?

!SLIDE incremental transition=fade

# What is Roo? #

* Rapid Productivity Tool
* Uses "Mix-Ins" to extract _boring_ code
* Uses an OSGi-based shell
* Add-ons provide commands, listen to file system events

!SLIDE incremental transition=fade

# What is Roo? #

* Builds Spring-based applications
* Provides various web UIs (Spring MVC, JSF, GWT) via add-ons
* Integrates with enterprise APIs

!SLIDE
![Too Many Toys](we-have-too-many-toys.jpg)

# Too Many Toys! #

!SLIDE

# Roo gets crap out of your way #

!SLIDE

# Roo for Database Productivity #

!SLIDE

# Roo for Web Productivity #

!SLIDE

# Digging Deeper... #

!SLIDE

# Mixins in Java - Inter-Type Declarations #

		@@@ java
		@RooJavaBean
		@RooToString
		@RooEntity
		public class Task {

		    @NotNull
		    @Size(max = 40)
		    private String task;

		    @Value("false")
		    private Boolean completed;

		}

!SLIDE

# Inter-type Declaration #
## @RooJavaBean ##

		@@@ java
		privileged aspect Task_Roo_JavaBean {

		    public String Task.getTask() {
		        return this.task;
		    }

		    public void Task.setTask(String task) {
		        this.task = task;
		    }
		
				...
		}

!SLIDE

# Quick App Demonstration #

!SLIDE

# Major Add-ons #

* Services and Repositories, AND Active Record
* SQL and NoSQL w/Spring Data
* JMS / Email Providers
* Security w/Spring Security
* Indexing / searching with Solr

!SLIDE
# Resources #

* Spring Roo in Action: Rimple, Penchikala, Dickens (MEAP available) - manning.com/rimple
* Roo project page (w/JIRA, Forums, docs) - www.springsource.org/spring-roo
* Roo is on github - github.com/SpringSource/spring-roo

!SLIDE
## Find me! ##
### PLUGS ###
### @krimple / rimple.com ###
### Spring Roo in Action - manning.com/rimple ###
### techcast.chariotsolutions.com ###
### Chariot Education Services ###
### Spring, Maven, Hibernate, Rails, Scala Training ###
### chariotsolutions.com/training_events ###

!SLIDE

# Get the slides #
http://rimple.com/roocampphilly.pdf

# Thank you!
## ROO MEAP - 40% discount using 'springroo40'