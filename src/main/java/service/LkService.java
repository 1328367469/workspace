package service;

import entity.*;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public interface LkService {

    Iterable<DesignEntity> findDesign();

    Iterable<ImgEntity> findBanner();

    Iterable<NewEntity> findNewByIsture();

    ImgEntity findbanner(Integer adress);

    Iterable<NewEntity> findNewsTuijian();

    Iterable<NewEntity> findNews();

    Iterable<NewEntity> findNews(Integer adress);

    Iterable<NewEntity> findAdver();

    NewEntity findOneNew(Integer id);

    Iterable<DesignEntity> findAllDesigns();

    DesignEntity finddesign(Integer id);

    ImgEntity findvideo(Integer id);

    Iterable<ImgEntity> findimgsforptoduct(Integer product);

    ProductEntity findProduct(Integer id);

    Iterable<ProductEntity> findProducts();

    void savauser(UserEntity user) throws Exception;

    void savasale(SaleEntity sale) throws Exception;
}
