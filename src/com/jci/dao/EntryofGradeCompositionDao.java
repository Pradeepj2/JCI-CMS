package com.jci.dao;

import java.util.List;

import com.jci.model.EntryofGradeCompositionModel;

public interface EntryofGradeCompositionDao {
  public void create(EntryofGradeCompositionModel egc);
  public List<Object[]>getAllJuteCombination();
}
