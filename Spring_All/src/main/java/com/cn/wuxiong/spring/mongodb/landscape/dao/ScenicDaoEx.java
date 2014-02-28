package com.cn.wuxiong.spring.mongodb.landscape.dao;

import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.query.Query;

import com.cn.wuxiong.spring.mongodb.landscape.domain.ScenicSpots;

public interface ScenicDaoEx {
	public void testFunc();

	public void persist(ScenicSpots ss);

	public int getScenicSpotsCount();

	public ScenicSpots findScenicSpotsById(ObjectId id);

	public ScenicSpots findScenicSpotsByCondition(Query query);

	public List<ScenicSpots> findScenicSpotssByCondition(Query query);
}
