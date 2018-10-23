package com.codnel.domain;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity(name = "question")
public class Question {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@DateTimeFormat(pattern = "MM/DD/YYYY'T'HH:mm:ss")
	@Column(name = "date_time")
	private Date dateTime;

	@NotEmpty
	private String title;

	@NotEmpty
	private String details;

	@NotNull
	@OneToMany(fetch = FetchType.EAGER)
	private List<Topic> topics;

	@ManyToOne
	private User questioner;

	private int votes = 0;

	@OneToMany(fetch = FetchType.EAGER)
	private List<Answer> answers=null;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDateTime() {
		return dateTime;
	}

	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public List<Topic> getTopics() {
		return topics;
	}

	public void setTopics(List<Topic> topics) {
		this.topics = topics;
	}

	public User getQuestioner() {
		return questioner;
	}

	public void setQuestioner(User questioner) {
		this.questioner = questioner;
	}

	public int getVotes() {
		return votes;
	}

	public void setVotes(int votes) {
		this.votes = votes;
	}

	public List<Answer> getAnswers() {
		return answers;
	}

	public void setAnswers(List<Answer> answers) {
		this.answers = answers;
	}
	
	public int getNumOfAnswers() {
		return answers.size();
	}

}
