package com.jci.dao;

import java.util.List;

import com.jci.model.DistrictModel;


public interface DistrictDao {
	public void create(DistrictModel productlist);
	public void update(DistrictModel productlist);
	public DistrictModel edit(int id);
	public void delete(int id);
	public DistrictModel find(int id);
	public List <DistrictModel> getAll();
	public List<String> getAllFilledPosition(String id);
	public List<String> getSpecificDistricts(String state, String crop_year, String delivery_type);
	public boolean submitform(DistrictModel off);
	public List<String> findByDistrictIds(String dids);
	public List<String> getDistrictCodeByDistrictIds(String dids);
}
