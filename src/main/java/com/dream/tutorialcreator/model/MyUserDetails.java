package com.dream.tutorialcreator.model;

import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class MyUserDetails implements UserDetails {

	private String userName;
	private String password;
	private boolean active;
	private Set<GrantedAuthority> authority;
	private boolean isAccountNonLocked;
	private boolean isCrediantialsNonExpired;
	private boolean isAccountNonExpired;
	
	public MyUserDetails(Users user) {
		this.userName = user.getUserName();
		this.password = user.getPassword();
		this.active = user.isActive();
		this.isAccountNonLocked = user.isAccountNonLocked();
		this.isCrediantialsNonExpired = user.isCrediantialsNonExpired();
		this.isAccountNonExpired = user.isAccountNonExpired();
		this.authority = Arrays.stream(user.getRoles().split(","))
													 .map(SimpleGrantedAuthority::new)
													 .collect(Collectors.toSet());
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authority;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return userName;
	}

	@Override
	public boolean isAccountNonExpired() {
		return isAccountNonExpired;
	}

	@Override
	public boolean isAccountNonLocked() {
		return isAccountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return isCrediantialsNonExpired;
	}

	@Override
	public boolean isEnabled() {
		return active;
	}

}
