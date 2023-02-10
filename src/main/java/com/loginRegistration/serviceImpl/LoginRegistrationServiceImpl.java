package com.loginRegistration.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.loginRegistration.dao.GetData;
import com.loginRegistration.model.loginRegistrationBean;
import com.loginRegistration.service.LoginRegistrationService;

@Service
public class LoginRegistrationServiceImpl implements LoginRegistrationService {

	@Autowired
	private GetData getData;
	@Override
	public loginRegistrationBean getRegistration(loginRegistrationBean data) {
		return getData.getRegistration(data);
	}
	@Override
	public loginRegistrationBean login(loginRegistrationBean data) {
		return getData.login(data);
	}
	@Override
	public List<loginRegistrationBean> getAllUser(String role, String status) {
		
		return getData.user(role, status);
	}
	@Override
	public void deleteUser(loginRegistrationBean data) {	
		getData.deleteUser(data);
	}

}
