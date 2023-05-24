package com.jci.dao;

import java.util.List;

import com.jci.model.DailyPurchaseConfModel;

public interface DailyPurchaseConfDao {

	public void create(DailyPurchaseConfModel dailyPurchaseConfModel);
	public void update(DailyPurchaseConfModel dailyPurchaseConfModel);
	public DailyPurchaseConfModel edit(int id);
	public void delete(int id);
	public DailyPurchaseConfModel find(int id);
	public List <DailyPurchaseConfModel> getAll(String dpcid, String regionId, String zoneId);
	public boolean submitform(DailyPurchaseConfModel dailyPurchaseConfModel);
	public  List<DailyPurchaseConfModel> dpc2();
	public String findGradePriceJuteVariety (String variety, int msp_no, String cropyr,String dpcid );
}
