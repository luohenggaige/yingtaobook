package cn.tushu.service;

import java.util.List;

import cn.tushu.model.Share;

public interface ShareService {
	public void insert(Share Share);
	public void deleteById(Integer ShareId);
	public void updateById(Integer ShareId);
	public List<Share> selectByAll();
	public Share selectById(Integer ShareId);
}
