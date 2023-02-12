package com.loginRegistration.config;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class Config {
	@Autowired
	private Environment env;

	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(env.getProperty("db.driver"));
		dataSource.setUrl(env.getProperty("db.url"));
		dataSource.setUsername(env.getProperty("db.username"));
		dataSource.setPassword(env.getProperty("db.password"));
		return dataSource;
	}

	@Bean
	public Connection jdbcConnection() {
		try {
			Class.forName(env.getProperty("db.driver"));
			Connection con = DriverManager.getConnection(env.getProperty("db.url"), env.getProperty("db.username"),
					env.getProperty("db.password"));
			return con;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}


}
