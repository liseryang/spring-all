package com.cn.wuxiong.spring.mongodb.sequence.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MongoDBSequenceDaoImpl implements MongoDBSequenceDaoEx {
	@Autowired
	private MongoTemplate mongoTemplate;
}
