package com.devsuperior.dslearnbds.dto;

import java.io.Serializable;

import com.devsuperior.dslearnbds.entities.Delivery;
import com.devsuperior.dslearnbds.entities.enums.DeliveryStatus;

public class DeliveryRevisionDTO implements Serializable{
	private static final long serialVersionUID = 1L;

	private DeliveryStatus status;
	private String feedback;
	private Integer correctCount;
	
	public DeliveryRevisionDTO() {
	}
	
	public DeliveryRevisionDTO(DeliveryStatus status, String feedback, Integer correctCount) {
		this.status = status;
		this.feedback = feedback;
		this.correctCount = correctCount;
	}

	public DeliveryRevisionDTO(Delivery entity) {
		this.status = entity.getStatus();
		this.feedback = entity.getFeedback();
		this.correctCount = entity.getCorrectCount();
	}

	public DeliveryStatus getStatus() {
		return status;
	}

	public void setStatus(DeliveryStatus status) {
		this.status = status;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public Integer getCorrectCount() {
		return correctCount;
	}

	public void setCorrectCount(Integer correctCount) {
		this.correctCount = correctCount;
	}
}
