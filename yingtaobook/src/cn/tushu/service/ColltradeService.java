package cn.tushu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.tushu.model.Colltrade;
import cn.tushu.model.Share;

public interface ColltradeService {
	public void insert(Colltrade Colltrade);
	public void deleteById(Integer ColltradeId);
	public void updateById(Integer ColltradeId);
	public List<Colltrade> selectByAll();
	public Colltrade selectById(Integer ColltradeId);
	public List<Colltrade> selectByAllHeat();
	public List<Colltrade> CateSelectAllDate(Map<String, Object> map);
	public List<Colltrade> CateSelectAllHeat(Map<String, Object> map);
}
