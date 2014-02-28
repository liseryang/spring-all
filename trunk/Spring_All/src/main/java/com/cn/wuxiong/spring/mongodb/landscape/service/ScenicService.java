package com.cn.wuxiong.spring.mongodb.landscape.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cn.wuxiong.spring.mongodb.landscape.dao.ScenicDao;
import com.cn.wuxiong.spring.mongodb.landscape.domain.ScenicSpots;

@Service
@Transactional
public class ScenicService {
	@Autowired
	private ScenicDao dao;

	private static final Logger logger = Logger.getLogger(ScenicService.class);

	public void testService() {
		System.out.println("###########################Test service");
	}

	/**
	 * 新增
	 * 
	 * @param ss
	 */
	public ObjectId addScenic(ScenicSpots ss) {
		Long beforCount = findCount();
		System.out.println("进入保存……");
		// dao.deleteAll();
		dao.save(ss);
		Long afterCount = findCount();
		if (beforCount == afterCount) {
			logger.info("创建失败" + ss);
		}
		System.out.println("新创建的对象的id为：" + ss.getId());

		logger.info("创建：" + ss);
		return ss.getId();
	}

	/**
	 * 查找
	 * 
	 * @param id
	 * @return
	 */
	public ScenicSpots findScenic(Long id) {
		System.out.println("进入查找……");
		ScenicSpots ss = dao.findOne(123L);
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$查找结果：" + ss.toString());
		return ss;
	}

	/**
	 * 通过Id查找记录
	 * 
	 * @param id
	 *            ObjectId
	 * @return
	 */
	public ScenicSpots findScenic(ObjectId id) {
		System.out.println("进入查找……");
		ScenicSpots ss = dao.findScenicSpotsById(new ObjectId(
				"530ffa3923c03219e07bca6d"));
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$查找结果：" + ss.toString());
		return ss;
	}

	/**
	 * 查找
	 * 
	 * @param id
	 * @return
	 */
	public List<ScenicSpots> findScenicByCondition(Query query) {
		System.out.println("进入查找……");
		List<ScenicSpots> sss = dao.findScenicSpotssByCondition(query);
		System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$查找结果：" + sss.toString());
		return sss;
	}

	/**
	 * 删除
	 * 
	 * @param id
	 * @return
	 */
	public ScenicSpots deleteScenicById(Long id) {
		System.out.println("进入删除……");
		ScenicSpots ss = dao.findOne(id);
		dao.delete(ss);
		logger.info("删除：" + ss.toString());
		return ss;
	}
	
	
	/**
	 * 删除所有
	 * 
	 * @param id
	 * @return
	 */
	public void deleteAllScenic() {
		dao.deleteAll();
		logger.info("删除所有");
	}

	/**
	 * 更新
	 * 
	 * @param ss
	 * @return
	 */
	public ScenicSpots updateScenic(Long id) {
		System.out.println("进入更新……");
		ScenicSpots ss = dao.findOne(id);
		ss.setName("岳阳楼");
		ss.setRemark("天下第一楼");
		dao.save(ss);
		logger.info("更新：" + ss.toString());
		return ss;
	}

	public Long findCount() {
		Long count = dao.count();
		System.out.println("记录数量为：" + count);
		return count;
	}

	public List<ScenicSpots> findAllScenicSpots() {
		return dao.findAll();
	}

}
