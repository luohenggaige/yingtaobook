package cn.tushu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.tushu.model.Jurisdict;

public interface JurisdictService {
	public void insert(Jurisdict Jurisdict);
	public void deleteById(Integer JurisdictId);
	public void updateById(Integer JurisdictId);
	public List<Jurisdict> selectByAll(Map<String, Object> map);
	public Jurisdict selectById(Integer JurisdictId);
	public List<Jurisdict> SelectAllJurisdict();
	public List<Jurisdict> selectByCondition(Map<String, Object> map);
}
