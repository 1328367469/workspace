package dao;

import entity.UserEntity;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by Administrator on 2017/7/11.
 */
public interface UserRepository extends PagingAndSortingRepository<UserEntity,Integer>{
}
