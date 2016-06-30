package com.huashidai.weihuotong.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huashidai.weihuotong.domain.ArticleComment;
import com.huashidai.weihuotong.mapper.ArticleCommentMapper;
import com.huashidai.weihuotong.query.ArticleCommentQuery;
import com.huashidai.weihuotong.query.PageResult;
import com.huashidai.weihuotong.redis.CacheEvict;
import com.huashidai.weihuotong.redis.Cacheable;
import com.huashidai.weihuotong.service.IArticleCommentService;
import com.huashidai.weihuotong.service.IArticleService;

@Service
public class ArticleCommentServiceImpl implements IArticleCommentService {
	@Autowired
	private ArticleCommentMapper articleCommentMapper;
	@Autowired
	private IArticleService articleService;

	@Cacheable
	@Override
	public PageResult<ArticleComment> query(ArticleCommentQuery qu) {
		// 统计查询
		Long total = articleCommentMapper.queryTotal(qu);
		// 分页查询
		List<ArticleComment> rows = articleCommentMapper.query(qu);
		return new PageResult<ArticleComment>(rows, qu.getPageSize(),
				qu.getCurrentPage(), total.intValue());
	}

	@Cacheable
	@Override
	public Map<String, Object> queryMap(ArticleCommentQuery qu) {
		Map<String, Object> map = new HashMap<String, Object>();
		PageResult<ArticleComment> pageResult = query(qu);
		map.put("total", pageResult.getTotalPage());
		ArrayList<Object> articleComments = new ArrayList<Object>();
		List<ArticleComment> datas = pageResult.getRows();
		for (ArticleComment a : datas) {
			Map<String, Object> articleComment = new HashMap<String, Object>();
			articleComment.put("id", a.getId());
			articleComment.put("content", a.getContent());
			articleComment.put("commentTime", a.getCommentTime());
			articleComment.put("nickname", a.getStore().getName());
			articleComment.put("headImage", a.getStore().getHeadImage());
			articleComments.add(articleComment);
		}
		map.put("articleComments", articleComments);
		return map;
	}

	@CacheEvict
	@Override
	public void commentArticle(ArticleComment articleComment) {
		Long id = articleComment.getArticle().getId();
		// 增加评论量
		articleService.addCommentNum(1, id);
		articleComment.setCommentTime(new Date());
		articleCommentMapper.save(articleComment);
	}

	@CacheEvict
	@Override
	public void delete(Long id) {
		articleCommentMapper.delete(id);
	}

	@CacheEvict
	@Override
	public void deleteByArticle(Long id) {
		articleCommentMapper.deleteByArticle(id);
	}

}
