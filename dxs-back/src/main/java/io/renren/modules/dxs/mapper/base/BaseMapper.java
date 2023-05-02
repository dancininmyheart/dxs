package io.renren.modules.dxs.mapper.base;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;


public interface BaseMapper<E> extends com.baomidou.mybatisplus.core.mapper.BaseMapper<E> {

    List<Map<String,Object>> selectBaseList(String select);

    Integer selectBaseCount(String count);

    Object selectBaseOne(String select);

    int updateBaseSql(String sql);

    int deleteBaseSql(String sql);
}
