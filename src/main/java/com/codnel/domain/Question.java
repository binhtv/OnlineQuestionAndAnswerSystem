package com.codnel.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity(name = "question")
public class Question implements Serializable  {
	private static final long serialVersionUID = 1L;

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
	@ManyToMany(fetch = FetchType.EAGER,cascade=CascadeType.MERGE )
	private List<Topic> topics = new ArrayList<>();

	@ManyToOne(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	private User questioner=null;

	private int votes = 0;
	@JsonIgnoreProperties("question")
	@OneToMany(fetch = FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name = "question_id")
	private List<Answer> answers = new ArrayList<>();

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
//		this.topics = topics;
		if(topics == null) {
			this.topics = new ArrayList<Topic>();
		} else {
			this.topics = topics;
		}
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
	
	public void addAnswer(Answer ans) {
		this.answers.add(ans);
	}

}
