package com.jci.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jci.dao.EntryofGradeCompositionDao;
import com.jci.model.EntryofGradeCompositionModel;
import com.jci.service.EntryofGradeCompositionService;

@Service
public class EntryofGradeCompositionServiceImpl implements EntryofGradeCompositionService{
 
	@Autowired
	EntryofGradeCompositionDao entryofGradeCompositionDao;
	
	@Override
	public void create(EntryofGradeCompositionModel egc) {
	   entryofGradeCompositionDao.create(egc);
	}

	@Override
	public List<Object[]> getAllJuteCombination() {
		List<Object[]> allJuteCombination = entryofGradeCompositionDao.getAllJuteCombination();
		return allJuteCombination;
	}
}
