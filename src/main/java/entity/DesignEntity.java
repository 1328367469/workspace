package entity;

import javax.persistence.*;

/**
 * Created by Administrator on 2017/7/11.
 */
@Entity
@Table(name = "design", schema = "xf", catalog = "")
public class DesignEntity {
    private int id;
    private String img;
    private String title;
    private String designnr;
    private String time;
    private Integer adress;
    private Integer isture;

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
    @Column(name = "img")
    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
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
    @Column(name = "designnr")
    public String getDesignnr() {
        return designnr;
    }

    public void setDesignnr(String designnr) {
        this.designnr = designnr;
    }

    @Basic
    @Column(name = "time")
    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
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
    @Column(name = "isture")
    public Integer getIsture() {
        return isture;
    }

    public void setIsture(Integer isture) {
        this.isture = isture;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DesignEntity that = (DesignEntity) o;

        if (id != that.id) return false;
        if (img != null ? !img.equals(that.img) : that.img != null) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (designnr != null ? !designnr.equals(that.designnr) : that.designnr != null) return false;
        if (time != null ? !time.equals(that.time) : that.time != null) return false;
        if (adress != null ? !adress.equals(that.adress) : that.adress != null) return false;
        if (isture != null ? !isture.equals(that.isture) : that.isture != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (img != null ? img.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (designnr != null ? designnr.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + (adress != null ? adress.hashCode() : 0);
        result = 31 * result + (isture != null ? isture.hashCode() : 0);
        return result;
    }
}
