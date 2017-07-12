package entity;

import javax.persistence.*;

/**
 * Created by Administrator on 2017/7/11.
 */
@Entity
@Table(name = "img", schema = "xf", catalog = "")
public class ImgEntity {
    private int id;
    private String url;
    private String title;
    private Integer type;
    private Integer adress;
    private Integer istrue;
    private DesignEntity design;
    private ProductEntity product;

    @ManyToOne
    @JoinColumn(name = "designid")
    public DesignEntity getDesign() {
        return design;
    }

    public void setDesign(DesignEntity design) {
        this.design = design;
    }

    @ManyToOne
    @JoinColumn(name = "productid")
    public ProductEntity getProduct() {
        return product;
    }

    public void setProduct(ProductEntity product) {
        this.product = product;
    }

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "url")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Basic
    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "type")
    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    @Basic
    @Column(name = "adress")
    public Integer getAdress() {
        return adress;
    }

    public void setAdress(Integer adress) {
        this.adress = adress;
    }

    @Basic
    @Column(name = "istrue")
    public Integer getIstrue() {
        return istrue;
    }

    public void setIstrue(Integer istrue) {
        this.istrue = istrue;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ImgEntity imgEntity = (ImgEntity) o;

        if (id != imgEntity.id) return false;
        if (url != null ? !url.equals(imgEntity.url) : imgEntity.url != null) return false;
        if (title != null ? !title.equals(imgEntity.title) : imgEntity.title != null) return false;
        if (type != null ? !type.equals(imgEntity.type) : imgEntity.type != null) return false;
        if (adress != null ? !adress.equals(imgEntity.adress) : imgEntity.adress != null) return false;
        if (istrue != null ? !istrue.equals(imgEntity.istrue) : imgEntity.istrue != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (url != null ? url.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (type != null ? type.hashCode() : 0);
        result = 31 * result + (adress != null ? adress.hashCode() : 0);
        result = 31 * result + (istrue != null ? istrue.hashCode() : 0);
        return result;
    }
}
