package com.cxt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class SpringBootHelloAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootHelloAppApplication.class, args);
	}

	@RequestMapping("/hello")
	public String hello() {

		return "\"result \": {\n" + "\n" + "              \"greetings\" : \"Have A Nice Day! \" \n" + "\n" + "}";

	}
}
