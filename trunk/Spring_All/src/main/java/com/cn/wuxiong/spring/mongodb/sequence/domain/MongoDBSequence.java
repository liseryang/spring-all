package com.cn.wuxiong.spring.mongodb.sequence.domain;

import java.io.Serializable;

import org.springframework.data.annotation.Id;

public class MongoDBSequence implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	private Long id;
	private String collectionName;
	private Long currentValue;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCollectionName() {
		return collectionName;
	}

	public void setCollectionName(String collectionName) {
		this.collectionName = collectionName;
	}

	public Long getCurrentValue() {
		return currentValue;
	}

	public void setCurrentValue(Long currentValue) {
		this.currentValue = currentValue;
	}

	@Override
	public String toString() {
		return "MongoDBSequence [id=" + id + ", collectionName="
				+ collectionName + ", currentValue=" + currentValue + "]";
	}
}
