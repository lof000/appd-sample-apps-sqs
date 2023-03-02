package com.netsurfingzone.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.aws.autoconfigure.context.ContextStackAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(exclude = { ContextStackAutoConfiguration.class })
@ComponentScan(basePackages = "com.netsurfingzone.*")
public class SpringConsumerMain {
	public static void main(String[] args) {
		SpringApplication.run(SpringConsumerMain.class, args);
	}

}
