package com.training.rest.webservices.restfulwebservices;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

	@GetMapping(path = "/")
	public String helloWorld() {
		return "{\"message\":\"Hello World Java v1\"}";
	}
	
	@GetMapping(path = "/getDetails")
	public String getError() throws InterruptedException {
		Thread.sleep(1000*10);
		System.exit(-1);
		return "{\"message\":\"Hello World Java v1\"}";
	}
	
}
