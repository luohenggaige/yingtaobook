package cn.tushu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.tushu.model.Share;

public interface ShareDao {
	
	public void insert(Share Share);
	public void deleteById(Integer ShareId);
	public void updateById(Integer ShareId);
	public List<Share> selectByAll();
	public Share selectById(Integer ShareId);
	public List<Share> selectByAllHeat();
	public List<Share> CateSelectAllDate(Map<String, Object> map);
	public List<Share> CateSelectAllHeat(Map<String, Object> map);
}
