package org.studyeasy.model;

public class User {
	
	private String id,email,picture;
	private boolean verified_email;

	public User(String id, String email, String picture, boolean verified_email) {
		super();
		this.id = id;
		this.email = email;
		this.picture = picture;
		this.verified_email = verified_email;
	}

	public User() {
	
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public boolean isVerified_email() {
		return verified_email;
	}
	public void setVerified_email(boolean verified_email) {
		this.verified_email = verified_email;
	}

}
