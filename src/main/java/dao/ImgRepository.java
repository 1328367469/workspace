package dao;

import entity.DesignEntity;
import entity.ImgEntity;
import entity.ProductEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by Administrator on 2017/7/11.
 */
public interface ImgRepository extends PagingAndSortingRepository<ImgEntity,Integer>{

    @Query("select i from ImgEntity i where i.type=1")
    Iterable<ImgEntity> findBanner();

    @Query("select i from ImgEntity i where i.adress=?1")
    ImgEntity findByAdress(Integer Adress);

    @Query("select img from ImgEntity img where img.design=?1 and img.url like '%mp4%'")
    ImgEntity findvideo(DesignEntity design);

    @Query("select img from ImgEntity  img where img.product=?1")
    Iterable<ImgEntity> findimg(ProductEntity product);
}
