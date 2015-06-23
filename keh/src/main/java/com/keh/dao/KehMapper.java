package com.keh.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.keh.dto.KehDto;

public interface KehMapper {
	ArrayList<KehDto> memberList();
	KehDto loginCheck(@Param("id") String id, @Param(value="pw")String pw);
	void register(@Param("id")String id, @Param("pw")String pw, @Param("name")String name);
	void updateInfo(@Param("id")String id, @Param("name")String name);
}
