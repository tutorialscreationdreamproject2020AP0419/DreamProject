package com.dream.tutorialcreator.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USERS")
public class Users {
	
	@Id
	@Column(name="ID")
	private int id;
	
	@Column(name="USERNAME")
	private String userName;
	
	@Column(name="PASSWORD")
	private String password;
	
	@Column(name="ACTIVE")
	private boolean active;
	
	@Column(name="ROLE")
	private String roles;
	
	@Column(name="ISACCOUNTNONEXPIRED")
	private boolean isAccountNonExpired;
	
	@Column(name="ISACCOUNTNONLOCKED")
	private boolean isAccountNonLocked;
	
	@Column(name="ISCREDIANTIALSNONEXPIRED")
	private boolean isCrediantialsNonExpired;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public String getRoles() {
		return roles;
	}
	public void setRoles(String roles) {
		this.roles = roles;
	}
	public boolean isAccountNonExpired() {
		return isAccountNonExpired;
	}
	public void setAccountNonExpired(boolean isAccountNonExpired) {
		this.isAccountNonExpired = isAccountNonExpired;
	}
	public boolean isAccountNonLocked() {
		return isAccountNonLocked;
	}
	public void setAccountNonLocked(boolean isAccountNonLocked) {
		this.isAccountNonLocked = isAccountNonLocked;
	}
	public boolean isCrediantialsNonExpired() {
		return isCrediantialsNonExpired;
	}
	public void setCrediantialsNonExpired(boolean isCrediantialsNonExpired) {
		this.isCrediantialsNonExpired = isCrediantialsNonExpired;
	}
	
}
