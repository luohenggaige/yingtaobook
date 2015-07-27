package cn.tushu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.tushu.model.Role;

public interface RoleService {
	public void insert(Role Role);
	public void deleteById(Integer RoleId);
	public void updateById(Integer RoleId);
	public List<Role> selectByAll(Map<String, Object> map);
	public Role selectById(Integer RoleId);
	public List<Role> SelectAllRole();
	public List<Role> selectByCondition(Map<String, Object> map);
}
