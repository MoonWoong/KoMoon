package com.java.highvod.dao;

import org.apache.ibatis.annotations.Param;

public interface VodMapper {
	String loginCheck(@Param("userName") String userName);
}