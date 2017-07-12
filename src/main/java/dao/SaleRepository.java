package dao;

import entity.SaleEntity;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by Administrator on 2017/7/11.
 */
public interface SaleRepository extends PagingAndSortingRepository<SaleEntity,Integer> {
}
