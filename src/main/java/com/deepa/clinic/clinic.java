package com.deepa.clinic;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class clinic {
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;
   
	private String patientname;
    private String diagnosis;
    private String treatment;
    private String advice;
    private String date;
    private int fee;
	public clinic() {
		
 
	}
	
	public clinic(Long id, String patientname, String diagnosis, String treatment, String advice, String date,
			int fee) {
		super();
		this.id = id;
		this.patientname = patientname;
		this.diagnosis = diagnosis;
		this.treatment = treatment;
		this.advice = advice;
		this.date = date;
		this.fee = fee;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	public String getDiagnosis() {
		return diagnosis;
	}
	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}
	public String getTreatment() {
		return treatment;
	}
	public void setTreatment(String treatment) {
		this.treatment = treatment;
	}
	public String getAdvice() {
		return advice;
	}
	public void setAdvice(String advice) {
		this.advice = advice;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	 
}


