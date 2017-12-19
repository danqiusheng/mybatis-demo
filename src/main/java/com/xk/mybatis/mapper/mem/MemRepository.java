package com.xk.mybatis.mapper.mem;

import com.xk.framework.jpa.reposiotry.base.BaseRepository;
import com.xk.framework.mybatis.BaseMapper;
import com.xk.mybatis.model.DBCount;
import com.xk.mybatis.model.Message;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/11/30.
 */
@Repository
public interface MemRepository extends BaseRepository<DBCount,String>,JpaSpecificationExecutor<DBCount>{
    
}
