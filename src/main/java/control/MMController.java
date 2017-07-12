package control;

import entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import service.LkService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/11.
 */
@Controller
public class MMController {
    @Resource
    LkService lkService;


    @RequestMapping("/home")
    public String findall(Map map){
        Iterable<DesignEntity> design = lkService.findDesign();
        Iterable<ImgEntity> banner = lkService.findBanner();
        Iterable<NewEntity> news = lkService.findNewByIsture();
        List<DesignEntity> designEntities=new ArrayList();
        List<NewEntity> newEntities=new ArrayList();
        for(DesignEntity designEntity:design){
            designEntity.setDesignnr(null);
            designEntities.add(designEntity);
        }
        for(NewEntity newEntity:news){
            newEntity.setNewnr(null);
            newEntities.add(newEntity);
        }
        map.put("designs",designEntities);
        map.put("banners",banner);
        map.put("news",newEntities);
        return "pages/home";
    }

    @RequestMapping("/zhidao")
    public String zhidao(Map map,@RequestParam(name = "adress",required = false,defaultValue = "0")Integer adress){
        map.put("zhidao",lkService.findbanner(4));
        map.put("tuijiannew",lkService.findNewsTuijian());
        if(adress == 0){
            map.put("news",lkService.findNews());
        }else {
            map.put("news",lkService.findNews(adress));
        }
        map.put("address",adress);
        return "pages/zhidao";
    }

    @RequestMapping("/service")
    public String service(@RequestParam(name = "serviceactive",required = false,defaultValue = "0")Integer serviceactive, Map map){
        map.put("serviceactive",serviceactive);
        map.put("fuwu",lkService.findbanner(6));
        return "pages/service";
    }

    @RequestMapping("/we")
    public String we(@RequestParam(name = "weactive",required = false,defaultValue = "0")Integer weactive, Map map){
        map.put("weactive",weactive);
        map.put("women",lkService.findbanner(7));
        map.put("advert",lkService.findAdver());
        return "pages/we";
    }


    @RequestMapping("/design")
    public String design(@RequestParam(name = "active",required = false,defaultValue = "0")Integer active, Map map){
        map.put("active",active);
        map.put("sheji",lkService.findbanner(5));
        map.put("designs",lkService.findAllDesigns());
        return "pages/design";
    }

    @RequestMapping("/designOne")
    public String designOne(Integer id,Map map){
        DesignEntity design = lkService.finddesign(id);
        map.put("design",design);
        map.put("sheji",lkService.findbanner(5));
        if(design.getIsture() == 2){
            map.put("video",lkService.findvideo(id));
            return "pages/designTwo";
        }else{
            map.put("design",lkService.finddesign(id));
            return "pages/Designdetail";
        }

    }

    @RequestMapping("/Productdetail")
    public String Productdetail(Integer id,Map map){
        map.put("img",lkService.findimgsforptoduct(id));

        map.put("product",lkService.findProduct(id));
        map.put("chanp",lkService.findbanner(8));
        return "pages/designOne";
    }

    @RequestMapping("/product")
    public String product(Map map){
        map.put("product",lkService.findbanner(8));
        map.put("products",lkService.findProducts());
        return "pages/product";
    }

    @RequestMapping("/tonewdetail")
    public String tonewdetail(Integer id,Map map){
        map.put("zhidao",lkService.findbanner(4));
        map.put("detail",lkService.findOneNew(id));
        return "pages/Newdetail";
    }


    @RequestMapping("/adduser")
    public String adduser(UserEntity user, Map map){
        try {
            user.setIsture(0);
            lkService.savauser(user);
            map.put("sescess",1);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("sescess",0);
        }finally {
            map.put("serviceactive",1);
            map.put("fuwu",lkService.findbanner(6));
            return "pages/service";
        }
    }

    @RequestMapping("/addsale")
    public String addsale(SaleEntity sale, Map map){
        try {
            sale.setIsture(0);
            lkService.savasale(sale);
            map.put("sescess1",1);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("sescess1",0);
        }finally {
            map.put("serviceactive",3);
            map.put("fuwu",lkService.findbanner(6));
            return "pages/service";
        }
    }

}
