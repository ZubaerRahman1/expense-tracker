package com.example.expensetracker;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.core.env.Environment;
import org.springframework.beans.factory.annotation.Autowired;

@SpringBootTest
@ActiveProfiles("test")
class ExpensetrackerApplicationTests {

	@Autowired
	private Environment env;

	@Test
	void contextLoads() {
		System.out.println("ACTIVE PROFILES = " + String.join(",", env.getActiveProfiles()));
	}

}
