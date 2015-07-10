package cn.tushu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.tushu.model.Share;

public interface ShareService {
	public void insert(Share Share);
	public void deleteById(Integer ShareId);
	public void updateById(Integer ShareId);
	public List<Share> selectByAll(Map<String, Object> map);
	public Share selectById(Integer ShareId);
	public List<Share> SelectAllShare();
	public List<Share> selectByCondition(Map<String, Object> map);
}
