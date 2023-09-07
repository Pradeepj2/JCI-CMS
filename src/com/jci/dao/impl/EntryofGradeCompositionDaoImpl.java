package com.jci.dao.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jci.dao.EntryofGradeCompositionDao;
import com.jci.model.EntryofGradeCompositionModel;


@Transactional
@Repository
public class EntryofGradeCompositionDaoImpl implements EntryofGradeCompositionDao{

	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	SessionFactory sessionFactory;
	protected Session currentSession(){
		return sessionFactory.getCurrentSession();
	}

	
	@Override
	public void create(EntryofGradeCompositionModel egc) {
		currentSession().saveOrUpdate(egc);
	}


	@Override
	public List<Object[]> getAllJuteCombination() {
		String sql = "select * from jutecombination";
		List<Object[]> list = (List<Object[]>) currentSession().createSQLQuery(sql).list();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println(list);
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println();
		return list;
	}
  
}
