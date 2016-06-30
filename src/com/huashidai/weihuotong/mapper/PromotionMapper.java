package com.huashidai.weihuotong.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.huashidai.weihuotong.domain.Promotion;
import com.huashidai.weihuotong.query.PromotionQuery;

public interface PromotionMapper {
	/**
	 * 保存
	 */
	void save(Promotion pro);
	/**
	 * 更新
	 * 修改后状态变为待审 
	 */
	void update(Promotion pro);
	/**
	 * 修改状态
	 */
	void updateState(Promotion pro);
	/**
	 * 删除
	 */
	void delete(Long id);
	/**
	 * 获取单个
	 */
	Promotion get(Long id);
	/**
	 * 高级查询
	 */
	List<Promotion> query(PromotionQuery qu);
	/**
	 * 查询总数
	 */
	Long queryTotal(PromotionQuery qu);
	/**
	 * 获取该广告位所有正常状态广告
	 * @param adPositionId 广告位id
	 * @return
	 */
	List<Promotion> getByAd(@Param("adPositionId")Long adPositionId);
}
