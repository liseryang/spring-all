package com.cn.wuxiong.spring.mongodb.landscape.dao;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.cn.wuxiong.spring.mongodb.landscape.domain.ScenicSpots;

@Repository
public interface ScenicDao extends MongoRepository<ScenicSpots, Long>,ScenicDaoEx { // 这个接口中可以写一些StudentDao不能满足要求的方法。我这里纯粹测试好玩
	
}
