package com.sridhar.example.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the company database table.
 * 
 */
@Entity
public class Company implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="company_seq_generator")
	@SequenceGenerator(name="company_seq_generator", sequenceName="company_seq_id", allocationSize=1)
	private Integer id;

	private String category;

	private String ceo;

	private String chairman;

	private String name;

	@Temporal(TemporalType.DATE)
	@Column(name="start_date")
	private Date startDate;

	public Company() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCeo() {
		return this.ceo;
	}

	public void setCeo(String ceo) {
		this.ceo = ceo;
	}

	public String getChairman() {
		return this.chairman;
	}

	public void setChairman(String chairman) {
		this.chairman = chairman;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

}