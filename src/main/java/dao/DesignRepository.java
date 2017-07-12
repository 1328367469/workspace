package dao;

import entity.DesignEntity;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by Administrator on 2017/7/11.
 */
public interface DesignRepository extends PagingAndSortingRepository<DesignEntity,Integer>{
}
