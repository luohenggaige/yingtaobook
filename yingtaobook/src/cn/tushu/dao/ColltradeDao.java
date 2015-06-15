package cn.tushu.dao;

import java.util.List;
import java.util.Map;

import cn.tushu.model.Colltrade;

public interface ColltradeDao {
	
	public void insert(Colltrade Colltrade);
	public void deleteById(Integer ColltradeId);
	public void updateById(Integer ColltradeId);
	public List<Colltrade> selectByAll();
	public Colltrade selectById(Integer ColltradeId);
	public List<Colltrade> selectByAllHeat();
	public List<Colltrade> CateSelectAllDate(Map<String, Object> map);
	public List<Colltrade> CateSelectAllHeat(Map<String, Object> map);
}
