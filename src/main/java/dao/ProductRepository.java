package dao;

import entity.ProductEntity;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by Administrator on 2017/7/11.
 */
public interface ProductRepository extends PagingAndSortingRepository<ProductEntity,Integer>{
}
