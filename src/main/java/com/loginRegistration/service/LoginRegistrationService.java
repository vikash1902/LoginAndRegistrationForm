package com.loginRegistration.service;

import java.util.List;

import com.loginRegistration.model.loginRegistrationBean;

public interface LoginRegistrationService {

	public loginRegistrationBean getRegistration(loginRegistrationBean data);

	public loginRegistrationBean login(loginRegistrationBean data);

	public List<loginRegistrationBean> getAllUser(String role, String status);
	
	public void deleteUser(loginRegistrationBean data);
}
