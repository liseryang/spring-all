package com.cn.wuxiong.spring.mongodb.landscape.domain;

import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceConstructor;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class ScenicSpots {
	@Id
	private ObjectId id;
	private String name;
	private Double ticketPrice;
	private Integer openTime;
	private Integer closeTime;
	private String remark;

	public ScenicSpots() {
	}

	@PersistenceConstructor
	ScenicSpots(String name, String remark) {
		super();
		this.name = name;
		this.remark = remark;
	}

	public ObjectId getId() {
		return id;
	}

	public void setId(ObjectId id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getTicketPrice() {
		return ticketPrice;
	}

	public void setTicketPrice(Double ticketPrice) {
		this.ticketPrice = ticketPrice;
	}

	public Integer getOpenTime() {
		return openTime;
	}

	public void setOpenTime(Integer openTime) {
		this.openTime = openTime;
	}

	public Integer getCloseTime() {
		return closeTime;
	}

	public void setCloseTime(Integer closeTime) {
		this.closeTime = closeTime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "ScenicSpots [id=" + id + ", name=" + name + ", ticketPrice="
				+ ticketPrice + ", openTime=" + openTime + ", closeTime="
				+ closeTime + ", remark=" + remark + "]";
	}
}
