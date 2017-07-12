package entity;

import javax.persistence.*;

/**
 * Created by Administrator on 2017/7/11.
 */
@Entity
@Table(name = "product", schema = "xf", catalog = "")
public class ProductEntity {
    private int id;
    private String typenew;
    private String typeold;
    private Double outprice;
    private Double intprice;
    private String detail;
    private String title;
    private String name;
    private Integer adress;
    private String img;

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
    @Column(name = "typenew")
    public String getTypenew() {
        return typenew;
    }

    public void setTypenew(String typenew) {
        this.typenew = typenew;
    }

    @Basic
    @Column(name = "typeold")
    public String getTypeold() {
        return typeold;
    }

    public void setTypeold(String typeold) {
        this.typeold = typeold;
    }

    @Basic
    @Column(name = "outprice")
    public Double getOutprice() {
        return outprice;
    }

    public void setOutprice(Double outprice) {
        this.outprice = outprice;
    }

    @Basic
    @Column(name = "intprice")
    public Double getIntprice() {
        return intprice;
    }

    public void setIntprice(Double intprice) {
        this.intprice = intprice;
    }

    @Basic
    @Column(name = "detail")
    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
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
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
    @Column(name = "img")
    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ProductEntity that = (ProductEntity) o;

        if (id != that.id) return false;
        if (typenew != null ? !typenew.equals(that.typenew) : that.typenew != null) return false;
        if (typeold != null ? !typeold.equals(that.typeold) : that.typeold != null) return false;
        if (outprice != null ? !outprice.equals(that.outprice) : that.outprice != null) return false;
        if (intprice != null ? !intprice.equals(that.intprice) : that.intprice != null) return false;
        if (detail != null ? !detail.equals(that.detail) : that.detail != null) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (adress != null ? !adress.equals(that.adress) : that.adress != null) return false;
        if (img != null ? !img.equals(that.img) : that.img != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (typenew != null ? typenew.hashCode() : 0);
        result = 31 * result + (typeold != null ? typeold.hashCode() : 0);
        result = 31 * result + (outprice != null ? outprice.hashCode() : 0);
        result = 31 * result + (intprice != null ? intprice.hashCode() : 0);
        result = 31 * result + (detail != null ? detail.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (adress != null ? adress.hashCode() : 0);
        result = 31 * result + (img != null ? img.hashCode() : 0);
        return result;
    }
}
