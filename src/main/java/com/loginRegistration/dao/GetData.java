package com.loginRegistration.dao;

import java.util.List;

import com.loginRegistration.model.loginRegistrationBean;

public interface GetData {
	public loginRegistrationBean getRegistration(loginRegistrationBean data);

	public loginRegistrationBean login(loginRegistrationBean data);

	public List<loginRegistrationBean> user(String role, String status);

	public void deleteUser(loginRegistrationBean data);
}
