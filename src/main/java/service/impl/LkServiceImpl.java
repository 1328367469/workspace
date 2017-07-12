package service.impl;

import dao.*;
import entity.*;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import service.LkService;
import utile.PageUtil;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
@Service
public class LkServiceImpl implements LkService {
    @Resource
    DesignRepository designRepository;
    @Resource
    ImgRepository imgRepository;
    @Resource
    NewRepository newRepository;
    @Resource
    ProductRepository productRepository;
    @Resource
    UserRepository userRepository;
    @Resource
    SaleRepository saleRepository;

    @Override
    public Iterable<DesignEntity> findDesign() {
        Page<DesignEntity> all = designRepository.findAll(PageUtil.buildPageRequest(1,6));
        return all.getContent();
    }

    @Override
    public Iterable<ImgEntity> findBanner() {
        return imgRepository.findBanner();
    }

    @Override
    public Iterable<NewEntity> findNewByIsture() {
        return newRepository.findNewsHome();
    }

    @Override
    public ImgEntity findbanner(Integer adress) {
        return imgRepository.findByAdress(adress);
    }

    @Override
    public Iterable<NewEntity> findNewsTuijian() {
        return newRepository.findnewsTuijain();
    }

    @Override
    public Iterable<NewEntity> findNews() {
        return newRepository.findAll();
    }

    @Override
    public Iterable<NewEntity> findNews(Integer adress) {
        return newRepository.findnews(adress);
    }

    @Override
    public Iterable<NewEntity> findAdver() {
        return newRepository.findadvert();
    }

    @Override
    public Iterable<DesignEntity> findAllDesigns() {
        return designRepository.findAll();
    }

    @Override
    public DesignEntity finddesign(Integer id) {
        return designRepository.findOne(id);
    }

    @Override
    public ImgEntity findvideo(Integer id) {
        return imgRepository.findvideo(designRepository.findOne(id));
    }

    @Override
    public Iterable<ImgEntity> findimgsforptoduct(Integer product) {
        return imgRepository.findimg(productRepository.findOne(product));
    }

    @Override
    public ProductEntity findProduct(Integer id) {
        return productRepository.findOne(id);
    }

    @Override
    public Iterable<ProductEntity> findProducts() {
        return productRepository.findAll();
    }

    @Override
    public NewEntity findOneNew(Integer id) {
        return newRepository.findOne(id);
    }

    @Override
    public void savauser(UserEntity user) throws Exception {
         userRepository.save(user);
    }

    @Override
    public void savasale(SaleEntity sale) throws Exception {
        saleRepository.save(sale);
    }
}
