package com.loginRegistration.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.loginRegistration.dao.GetData;
import com.loginRegistration.model.loginRegistrationBean;

@Repository
@Transactional
public class GetDataImpl implements GetData {

	@Autowired
	private Connection conn;

	@Override
	public loginRegistrationBean getRegistration(loginRegistrationBean data) {
		loginRegistrationBean loginRegistrationBean = null;
		try {
			String q = "INSERT INTO user_info(id,user_id,name, password, phone, role, email, status)"
					+ "	VALUES (nextval('user_sequence'),?, ?, ?, ?,?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement(q);
			preparedStatement.setString(1, data.getUserId().toUpperCase());
			preparedStatement.setString(2, data.getName().toUpperCase());
			preparedStatement.setString(3, data.getPassword().toUpperCase());
			preparedStatement.setString(4, data.getPhoneNo().toUpperCase());
			preparedStatement.setString(5, "USER");
			preparedStatement.setString(6, data.getEmail().toUpperCase());
			preparedStatement.setString(7, "A");
			boolean c = preparedStatement.execute();
			data.setStatus("Active");
			return data;
		} catch (Exception e) {

			System.err.println("from dao");
			e.printStackTrace();
		}
		return loginRegistrationBean;
	}

	@Override
	public loginRegistrationBean login(loginRegistrationBean data) {
		loginRegistrationBean role = new loginRegistrationBean();
		try {
			String q = "select role,user_id,name from user_info where user_id = ? and user_info.password=? and status =?";
			PreparedStatement preparedStatement = conn.prepareStatement(q);
			preparedStatement.setString(1, data.getUserId().toUpperCase());
			preparedStatement.setString(2, data.getPassword().toUpperCase());
			preparedStatement.setString(3, "A");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				role.setUserId(resultSet.getString("user_id"));
				role.setRole(resultSet.getString("role"));
				role.setName(resultSet.getString("name"));
				role.setStatus("ACTIVE");
				return role;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return role;
	}

	@Override
	public List<loginRegistrationBean> user(String role, String status) {
		List<loginRegistrationBean> loginRegistrationBeans = new ArrayList<>();
		try {
			String q = "select user_id,name,id from user_info where role=? and status =?";
			PreparedStatement preparedStatement = conn.prepareStatement(q);
			preparedStatement.setString(1, role.toUpperCase());
			preparedStatement.setString(2, status.toUpperCase());
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				loginRegistrationBean loginRegistrationBean = new loginRegistrationBean();
				loginRegistrationBean.setUserId(resultSet.getString("user_id"));
				loginRegistrationBean.setName(resultSet.getString("name"));
				loginRegistrationBean.setId(resultSet.getInt("id"));
				loginRegistrationBeans.add(loginRegistrationBean);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return loginRegistrationBeans;
	}

	@Override
	public void deleteUser(loginRegistrationBean data) {
		try {
			String q = "UPDATE user_info set status=? where id=?";
			PreparedStatement preparedStatement = conn.prepareStatement(q);
			preparedStatement.setString(1, "D");
			preparedStatement.setInt(2, data.getId());
			preparedStatement.execute();

		} catch (Exception e) {
			System.out.print("hello from here");
			e.printStackTrace();
		}
	}
}
