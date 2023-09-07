package com.jci.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jci.model.EntryofGradeCompositionModel;
 
public interface EntryofGradeCompositionService {
  public void create(EntryofGradeCompositionModel egc);
  public List<Object[]> getAllJuteCombination();
}
