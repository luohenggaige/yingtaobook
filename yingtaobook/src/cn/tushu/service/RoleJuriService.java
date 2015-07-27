package cn.tushu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.tushu.model.RoleJuri;

public interface RoleJuriService {
	public void insert(RoleJuri RoleJuri);
	public void deleteById(Integer RoleJuriId);
	public void updateById(Integer RoleJuriId);
	public List<RoleJuri> selectByAll(Map<String, Object> map);
	public RoleJuri selectById(Integer RoleJuriId);
	public List<RoleJuri> SelectAllRoleJuri();
	public List<RoleJuri> selectByCondition(Map<String, Object> map);
}
