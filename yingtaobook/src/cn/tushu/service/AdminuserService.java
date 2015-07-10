package cn.tushu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.tushu.model.Adminuser;

public interface AdminuserService {
	public void insert(Adminuser Adminuser);
	public void deleteById(Integer AdminuserId);
	public void updateById(Integer AdminuserId);
	public List<Adminuser> selectByAll(Map<String, Object> map);
	public Adminuser selectById(Integer AdminuserId);
	public List<Adminuser> SelectAllAdminuser();
	public List<Adminuser> selectByCondition(Map<String, Object> map);
}
