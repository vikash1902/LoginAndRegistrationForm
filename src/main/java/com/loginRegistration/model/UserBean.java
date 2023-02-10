package com.loginRegistration.model;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class UserBean {

	private String userID;
	private String password;
	private int id;

}
