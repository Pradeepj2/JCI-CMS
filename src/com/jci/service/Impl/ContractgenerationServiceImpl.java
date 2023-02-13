package com.jci.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jci.dao.ContractgenerationDao;
import com.jci.model.Contractgeneration;
import com.jci.service.ContractgenerationService;

@Service
public class ContractgenerationServiceImpl implements ContractgenerationService {

	@Autowired
	ContractgenerationDao contractgenerationDao;

	@Override
	public void create(Contractgeneration contractgeneration) {
		this.contractgenerationDao.create(contractgeneration);

	}

	@Override
	public void update(Contractgeneration contractgeneration) {

		this.contractgenerationDao.update(contractgeneration);
	}

	@Override
	public Contractgeneration edit(int contract_id) {

		return this.contractgenerationDao.edit(contract_id);
	}

	@Override
	public void delete(int contract_id) {
		this.contractgenerationDao.delete(contract_id);

	}

	@Override
	public Contractgeneration find(int contract_id) {

		return this.contractgenerationDao.find(contract_id);
	}

	@Override
	public List<Contractgeneration> getAll() {

		return this.contractgenerationDao.getAll();
	}

}
