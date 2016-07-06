package com.huashidai.weihuotong.app;

/**
 * 店铺相关的接口
 */
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.huashidai.weihuotong.domain.PostageTemplate;
import com.huashidai.weihuotong.domain.Store;
import com.huashidai.weihuotong.exception.LogicException;
import com.huashidai.weihuotong.query.GoodsQuery;
import com.huashidai.weihuotong.query.StoreFavoritesQuery;
import com.huashidai.weihuotong.query.StoreQuery;
import com.huashidai.weihuotong.service.IMarginOrderService;
import com.huashidai.weihuotong.service.IPostageTemplateService;
import com.huashidai.weihuotong.service.IStoreAuthService;
import com.huashidai.weihuotong.service.IStoreFavoritesService;
import com.huashidai.weihuotong.service.IStoreService;
import com.huashidai.weihuotong.utils.AppResult;
import com.huashidai.weihuotong.utils.ConstUtil;

@Controller
@RequestMapping("/app")
public class StoreAPP {
	@Autowired
	private IStoreService storeService;
	@Autowired
	private IStoreAuthService storeAuthService;
	@Autowired
	private IPostageTemplateService postageTemplateService;
	@Autowired
	private IStoreFavoritesService storeFavoritesService;
	@Autowired
	private IMarginOrderService marginOrderService;

	/**
	 * 搜索店铺
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping("/searchStore")
	@ResponseBody
	public AppResult searchStore(StoreQuery storeQuery) {

		AppResult appResult = null;
		try {
			storeQuery.setState(ConstUtil.STORE_NORMAL);
			Map<String, Object> map = storeService.searchStore(storeQuery);
			// 封装响应信息
			appResult = new AppResult(map);
		} catch (Exception e) {
			e.printStackTrace();
			// 封装响应信息
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 点击进入店铺
	 * 
	 * @param storeId
	 * @return
	 */
	@RequestMapping("/enterStore")
	@ResponseBody
	public AppResult enterStore(Long storeId, Long userId) {

		AppResult appResult = null;
		try {
			GoodsQuery goodsQuery = new GoodsQuery();
			goodsQuery.setStoreId(storeId);
			goodsQuery.setState(1);
			Map<String, Object> data = storeService.enterStore(goodsQuery,
					userId);
			// 封装响应信息
			appResult = new AppResult(data);
		} catch (LogicException e) {
			// 封装响应信息
			appResult = new AppResult(e.getMessage(), e.getErrorCode());
		}
		return appResult;
	}

	/**
	 * 保存店铺入驻信息
	 * 
	 * @param storeId
	 * @return
	 */
	@RequestMapping("/saveStore")
	@ResponseBody
	public AppResult saveStore(@RequestParam("file") MultipartFile[] file,
			String man, Store store, Long userId) {

		AppResult appResult = null;
		try {
			storeService.save(store, userId);
			Long storeId = store.getId();
			storeAuthService.save(file, man, storeId);
			// 封装响应信息
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("storeId", storeId);
			appResult = new AppResult(map);
		} catch (Exception e) {
			e.printStackTrace();
			// 封装响应信息
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 保存店铺认证信息
	 * 
	 * @param storeId
	 * @return
	 */
	// @RequestMapping("/saveStoreAuth")
	// @ResponseBody
	// public AppResult saveStoreAuth(@RequestParam("file") MultipartFile[]
	// file, String linkman ,Long storeId){
	//
	// AppResult appResult = null;
	// try{
	// storeAuthService.save(file, linkman, storeId);
	// // 封装响应信息
	// appResult = new AppResult(null);
	// }catch(Exception e){
	// // 封装响应信息
	// appResult = new AppResult();
	// }
	// return appResult;
	// }

	/**
	 * 店铺详细信息
	 * 
	 * @param userId
	 * @return
	 */
	@RequestMapping("/storeInfo")
	@ResponseBody
	public AppResult storeInfo(Long storeId) {
		AppResult appResult = null;
		try {
			Map<String, Object> storeInfo = storeService.storeInfo(storeId);
			appResult = new AppResult(storeInfo);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 店铺头像
	 * 
	 * @param userId
	 * @param image
	 * @return
	 */
	@RequestMapping("/updateHeadImage")
	@ResponseBody
	public AppResult updateHeadImage(
			@RequestParam("image") MultipartFile image, Long storeId) {
		AppResult appResult = null;
		try {
			storeService.updateHeadImage(image, storeId);
			appResult = new AppResult(null);
		} catch (IOException e) {
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 修改店铺名字
	 * 
	 * @param userId
	 * @param name
	 * @return
	 */
	@RequestMapping("/updateStoreName")
	@ResponseBody
	public AppResult updateStoreName(String name, Long storeId) {
		AppResult appResult = null;
		try {
			storeService.updateStoreName(name, storeId);
			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 修改店铺简介
	 * 
	 * @param userId
	 * @param intro
	 * @return
	 */
	@RequestMapping("/updateStoreIntro")
	@ResponseBody
	public AppResult updateStore(String intro, Long storeId) {
		AppResult appResult = null;
		try {
			storeService.updateStoreIntro(intro, storeId);
			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 修改店铺所在地
	 * 
	 * @param userId
	 * @param intro
	 * @return
	 */
	@RequestMapping("/updateStoreCity")
	@ResponseBody
	public AppResult updateStoreCity(Long cityId, Long storeId) {
		AppResult appResult = null;
		try {
			storeService.updateStoreCity(cityId, storeId);
			appResult = new AppResult(null);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 获取收藏的店铺
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping("/storeFavorites")
	@ResponseBody
	public AppResult storeFavorites(StoreFavoritesQuery qu) {
		AppResult appResult = null;
		try {
			Map<String, Object> map = storeFavoritesService.queryMap(qu);
			appResult = new AppResult(map);
		} catch (Exception e) {
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 收藏和取消收藏
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping("/updateStoreFavorites")
	@ResponseBody
	public AppResult updateStoreFavorites(Long userId, Long storeId) {
		AppResult appResult = null;
		try {
			Map<String, Object> map = storeFavoritesService
					.updateStoreFavorites(storeId, userId);
			appResult = new AppResult(map);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 生成保证金订单号
	 * 
	 * @param
	 * @return
	 */
	@RequestMapping("/marginOrderNum")
	@ResponseBody
	public AppResult marginOrderNum(Long storeId) {
		AppResult appResult = null;
		try {
			Map<String, Object> orderNum = marginOrderService
					.createOrderNum(storeId);
			appResult = new AppResult(orderNum);
		} catch (Exception e) {
			e.printStackTrace();
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 获取该店铺所有运费模板
	 * 
	 * @param goodsId
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/allPostageTemplate")
	@ResponseBody
	public AppResult allPostageTemplate(Long storeId) {
		AppResult appResult = null;
		try {
			List<Map<String, Object>> postageTemplates = postageTemplateService
					.getByStore(storeId);
			appResult = new AppResult(postageTemplates);
		} catch (Exception e) {
			appResult = new AppResult();
		}
		return appResult;
	}

	/**
	 * 获取单个运费模板
	 * 
	 * @param goodsId
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/postageTemplate")
	@ResponseBody
	public AppResult postageTemplate(Long postageTemplateId) {
		AppResult appResult = null;
		try {
			Map<String, Object> postageTemplate = postageTemplateService
					.get(postageTemplateId);
			appResult = new AppResult(postageTemplate);
		} catch (Exception e) {
			appResult = new AppResult();
		}
		return appResult;
	}
	/**
	 * 添加运费模板
	 * 
	 * @param goodsId
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/savePostageTemplate")
	@ResponseBody
	public AppResult savePostageTemplate(PostageTemplate postageTemplate) {
		AppResult appResult = null;
		try {
			postageTemplateService.save(postageTemplate);
			appResult = new AppResult(null);
		} catch (Exception e) {
			appResult = new AppResult();
		}
		return appResult;
	}
	/**
	 * 修改运费模板
	 * 
	 * @param goodsId
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/updatePostageTemplate")
	@ResponseBody
	public AppResult updatePostageTemplate(PostageTemplate postageTemplate) {
		AppResult appResult = null;
		try {
			postageTemplateService.update(postageTemplate);
			appResult = new AppResult(null);
		} catch (Exception e) {
			appResult = new AppResult();
		}
		return appResult;
	}
}
