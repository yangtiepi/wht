package com.huashidai.weihuotong.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.query.GoodsQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.query.StoreQuery;

public interface IStoreService {
	/**
	 * 进入店铺
	 * @param goodsQuery 商品查询条件
	 * @return
	 */
	Map<String,Object> enterStore(GoodsQuery goodsQuery,Long userId);
	
	/**
	 * 保存
	 */
	void save(Store store,Long userId);
	/**
	 * 查询所有
	 */
	List<Store> getAll();
	/**
	 * 根据广告查询
	 */
	Store getByPromotion(Long promotionId);
	/**
	 * 根据账户查询
	 */
	Store getByAccount(Long accountId);
	/**
	 * 根据用户查询
	 */
	Store getByUser(Long userId);
	/**
	 * 根据商品查询
	 */
	Store getByGoods(Long goodsId);
	
	/**
	 * 高级查询
	 * @param qu
	 * @return
	 */
	PageResult<Store> query(StoreQuery qu);
	/**
	 * 修改图片
	 * @param image
	 * @param storeId
	 */
	void updateHeadImage(MultipartFile image, Long storeId) throws IOException;
	/**
	 * 搜索店铺
	 * @param storeQuery
	 */
	Map<String, Object> searchStore(StoreQuery storeQuery);
	/**
	 * 更新
	 * @param storeImage
	 * @param store
	 */
	void update(MultipartFile storeImage, Store store) throws IOException;
	/**
	 * 店铺详细信息
	 * @param storeId
	 */
	Map<String, Object> storeInfo(Long storeId);
	/**
	 * 修改名字
	 * @param name
	 * @param storeId
	 */
	void updateStoreName(String name, Long storeId);
	/**
	 * 修改简介
	 * @param name
	 * @param storeId
	 */
	void updateStoreIntro(String intro, Long storeId);
	/**
	 * 修改所在地
	 * @param cityId
	 * @param storeId
	 */
	void updateStoreCity(Long cityId, Long storeId);
	/**
	 * 修改保证金
	 */
	void updateMargin(Integer price, Long storeId);
	
	Store get(Long storeId);
	/**
	 * 增加销量
	 * @param num
	 * @param storeId
	 */
	void addSaleNum(Integer num, Long storeId);
	/**
	 * 更新收藏量
	 * @param hot
	 * @param storeId
	 */
	void updateHot(int hot, Long storeId);
	/**
	 * 审核通过
	 * @param id
	 */
	void success(Long id);
	/**
	 * 审核失败
	 * @param id
	 * @param remark
	 */
	void failure(Long id, String remark);
	/**
	 * 停用
	 * @param id
	 * @param remark
	 */
	void leave(Long id, String remark);
	/**
	 * 启用
	 * @param id
	 */
	void up(Long id);

}
