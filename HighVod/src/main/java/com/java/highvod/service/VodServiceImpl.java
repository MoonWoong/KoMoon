package com.java.highvod.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.highvod.dao.VodMapper;

@Service("vodService")
public class VodServiceImpl implements VodService {
	
	@Autowired
	private VodMapper vodMapper;

	public String loginCheck(String userName) {
		return vodMapper.loginCheck(userName);
	}


}