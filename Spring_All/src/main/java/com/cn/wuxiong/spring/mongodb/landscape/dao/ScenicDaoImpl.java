package com.cn.wuxiong.spring.mongodb.landscape.dao;

import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.cn.wuxiong.spring.mongodb.landscape.domain.ScenicSpots;

@Repository
public class ScenicDaoImpl implements ScenicDaoEx {// 对于那些补充的方法的实现
	@Autowired
	private MongoTemplate mongoTemplate;

	// @Override
	public void testFunc() {
		System.out.println("#############Test DAO");
	}

	public void persist(ScenicSpots ss) {
		System.out.println("进入保存……");
		mongoTemplate.insert(ss);
		System.out.println(ss);
	}

	public int getScenicSpotsCount() {
		return mongoTemplate.findAll(ScenicSpots.class).size();
	}

	public ScenicSpots findScenicSpotsById(ObjectId id) {
		return mongoTemplate.findById(id, ScenicSpots.class);
	}

	public ScenicSpots findScenicSpotsByCondition(Query query) {
		return mongoTemplate.findOne(query, ScenicSpots.class);
	}

	public List<ScenicSpots> findScenicSpotssByCondition(Query query) {
		return mongoTemplate.find(query, ScenicSpots.class);
	}

}
