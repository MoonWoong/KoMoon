package woong.highvod.dao;

import org.apache.ibatis.annotations.Param;

public interface VodMapper {
	String loginCheck(@Param("name") String userName);
}
