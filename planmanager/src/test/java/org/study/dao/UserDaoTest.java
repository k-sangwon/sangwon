package org.study.dao;

import static org.junit.Assert.fail;

import org.junit.Assert;
import org.junit.Test;
import org.study.model.User;


public class UserDaoTest {

	@Test
	public void testConnection() {
		UserDao dao = new UserDao();
		Assert.assertNotNull(dao);
	}
	
	@Test
	public void testAuthenticateUser() {
		UserDao dao = new UserDao();
		User user = dao.authenticateUser("sangwon", "1234");
		if (user != null) {
			Assert.assertEquals("����", user.getName());
		} else {
			fail("authentication has problem");
		}
			
	}
}
