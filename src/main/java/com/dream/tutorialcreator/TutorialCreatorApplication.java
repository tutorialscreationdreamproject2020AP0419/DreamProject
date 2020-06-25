package com.dream.tutorialcreator;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories(basePackageClasses = com.dream.tutorialcreator.repository.UserRepository.class)
@SpringBootApplication
@ComponentScan("com.dream.tutorialcreator.repository")
@ComponentScan("com.dream.tutorialcreator.security.config")
public class TutorialCreatorApplication {

	public static void main(String[] args) {
		SpringApplication.run(TutorialCreatorApplication.class, args);
	}

}
