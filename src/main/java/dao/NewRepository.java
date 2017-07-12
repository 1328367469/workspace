package dao;

import entity.ImgEntity;
import entity.NewEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by Administrator on 2017/7/11.
 */
public interface NewRepository extends PagingAndSortingRepository<NewEntity,Integer>{

    @Query("select newa from NewEntity newa where newa.isture>0 and newa.newadress < 5")
    Iterable<NewEntity> findNewsHome();

    @Query("select newa from NewEntity newa where newa.istuijian=1")
    Iterable<NewEntity> findnewsTuijain();

    @Query("select news from NewEntity news where news.newadress=?1")
    Iterable<NewEntity> findnews(Integer adress);

    @Query("select news from NewEntity news where news.newadress=5")
    Iterable<NewEntity> findadvert();
}
