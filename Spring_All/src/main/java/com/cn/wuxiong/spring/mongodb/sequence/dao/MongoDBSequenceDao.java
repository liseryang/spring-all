package com.cn.wuxiong.spring.mongodb.sequence.dao;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.cn.wuxiong.spring.mongodb.sequence.domain.MongoDBSequence;
@Repository
public interface MongoDBSequenceDao extends MongoRepository<MongoDBSequence, Long> {

}
