package com.cn.wuxiong.spring.mongodb.sequence.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cn.wuxiong.spring.mongodb.sequence.dao.MongoDBSequenceDao;
import com.cn.wuxiong.spring.mongodb.sequence.domain.MongoDBSequence;

@Service
@Transactional
public class MongoDBSequenceService {
	@Autowired
	private MongoDBSequenceDao dao;

	// private static final Logger logger =
	// Logger.getLogger(MongoDBSequenceService.class);

	/**
	 * 创建新纪录或者给已有记录+1 将 collectionName 的hashcode作为id值，这个值肯定不会出现重复。
	 * 然后这样的话，如果collectionName的hashcode对应的记录不存在的话，那么创建一个返回1作为新的id；
	 * 如果存在的话，将对应的id加上1后，返回作为新的id。 因为Spring 的controller默认为单例。
	 * 
	 * @param collectionId
	 * @param collectionName
	 */
	public Long addOrIncSequence(String collectionName) {//
		Character c = collectionName.charAt(0);
		if (Character.isUpperCase(c)) {// 先将首字母转为小写
			char t = Character.toLowerCase(c);
			collectionName = t + collectionName.substring(1);
		}

		MongoDBSequence sequence = dao.findOne((long) (collectionName
				.hashCode()));// 找到记录自己的最大id的那条记录

		if (null == sequence) {
			System.out.println("对应的记录不存在……");
			sequence = new MongoDBSequence();
			sequence.setId((long) collectionName.hashCode());
			sequence.setCollectionName(collectionName);
			sequence.setCurrentValue(1L);// 因为是新添加的 所以就设置其当前id为1就可以了
			dao.save(sequence);

		} else { // 记录自己的id那条记录存在
			sequence.setCurrentValue(sequence.getCurrentValue() + 1);// 记录+1
			dao.save(sequence);
		}
		return sequence.getCurrentValue();
	}

	/**
	 * 更新当前集合的最大id
	 * 
	 * @param collectionName
	 * @throws Exception
	 */
	public Long getSequence(String collectionName) throws Exception {
		Character c = collectionName.charAt(0);
		if (Character.isUpperCase(c)) {// 先将首字母转为小写
			char t = Character.toLowerCase(c);
			collectionName = t + collectionName.substring(1);
		}

		MongoDBSequence sequence = dao.findOne((long) collectionName.hashCode());
		if (null != sequence) {// 对应记录存在
			Long currentVal = sequence.getCurrentValue();
			return currentVal;
		} else {// 对应的记录不存在
			throw new Exception(
					"The Collection was named "+collectionName+" is not exist.");
		}

	}

	/**
	 * 查找当前集合的id值
	 * 
	 * @param collectionName
	 * @return
	 */
	public Long findCurrentSequence(Long collectionId) {
		return dao.findOne(collectionId).getCurrentValue();
	}

}
