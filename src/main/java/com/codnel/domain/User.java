package com.codnel.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class User {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@NotEmpty
	@Size(min = 5, message = "{Size.username}")
	private String username;

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@NotEmpty
	private String password;

	@Valid
	@OneToOne(cascade = CascadeType.ALL)
	private Profile profile;

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "user_topic")
	private List<Topic> followingTopics;

	@OneToMany(cascade = CascadeType.ALL)
	private List<Question> questions;

	@OneToOne(cascade = CascadeType.ALL)
	private Role role;

	public List<Topic> getFollowingTopics() {
		return followingTopics;
	}

	public void setFollowingTopics(List<Topic> followingTopics) {
		this.followingTopics = followingTopics;
	}

	public List<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}

}
