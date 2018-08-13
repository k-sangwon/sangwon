package org.study.model;

import java.util.Date;

public class Application {

	int id;
	String userId;
	String plan;
	String plandesc;
	
	public Application(String userId) {
		this.userId = userId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPlan() {
		return plan;
	}
	public void setPlan(String plan) {
		this.plan = plan;
	}
	public String getPlandesc() {
		return plandesc;
	}
	public void setPlandesc(String plandesc) {
		this.plandesc = plandesc;
	}
	@Override
	public String toString() {
		return "Application [id=" + id + ", userId=" + userId + ", plan=" + plan + ", plandesc=" + plandesc + "]";
	}

	

}